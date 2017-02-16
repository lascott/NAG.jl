# --------------------------------------------------------------
#  e04 – Minimizing or Maximizing a Function
#      nag.co.uk/numeric/cl/nagdoc_cl26/html/e04/e04conts.html
#
#  Commentary
#
#  Pulled original code by github.com/StefanKarpinski here to add to it.
#  See also
#
#      Prep_nag_fn.sh
#         this makes use of the very structured NAG
#         header files to create the list of files below.
#      GSL.jl
#         basis for the metaprogramming design employed here.
#      CPLEX.jl
#         another related interface to a scientific library, testing fns 
#         design is very likely to be helpful
#
#  Copyright (C) 2017  Louis Scott 
#  
# --------------------------------------------------------------

section_str = :"Minimizing or Maximizing a Function"
nag_doc_str = :"nag.co.uk/numeric/cl/nagdoc_cl26/html/e04/e04conts.html"

# --------------------------------------------------------------

export
    nag_opt_read!,
    nag_opt_nlp!,
    nag_opt_lp!
    
    
const objfunref = Array(Function)
const confunref = Array(Function)

function objfun_wrapper(
    n::NagInt, x::Ptr{Float64}, objf::Ptr{Float64}, g::Ptr{Float64}, comm::Ptr{NagInt}
)
    x = pointer_to_array(x,int(n),false)
    g = pointer_to_array(g,int(n),false)
    f = unsafe_load(comm)
    unsafe_store!(objf,objfunref[1](x,g,f))
    return nothing
end

const c_objfun = cfunction(objfun_wrapper, Void,
    (NagInt, Ptr{Float64}, Ptr{Float64}, Ptr{Float64}, Ptr{NagInt}))

function confun_wrapper(
    n::NagInt, ncnlin::NagInt, needc::Ptr{NagInt}, x::Ptr{Float64},
    conf::Ptr{Float64}, conjac::Ptr{Float64}, comm::Ptr{NagInt}
)
    needc  = pointer_to_array(needc,int(ncnlin),false)
    x      = pointer_to_array(x,int(n),false)
    conf   = pointer_to_array(conf,int(ncnlin),false)
    conjac = pointer_to_array(conjac,(int(n),int(ncnlin)),false)
    flag   = unsafe_load(comm)
    confunref[1](needc,x,conf,conjac,flag)
    return nothing
end

const c_confun = cfunction(confun_wrapper, Void,
    (NagInt, NagInt, Ptr{NagInt}, Ptr{Float64}, Ptr{Float64}, Ptr{Float64}, Ptr{NagInt}))

# --------------------------------------------------------------

@doc "$(section_str) :
      See $(nag_doc_str) for further details
     " nag_opt_read!
"""
 calls

 * nag_opt_init (e04xxc) is the options structure initialization function
 * nag_opt_read (e04xyc) reads a set of options values from a file
 
   and assigns them to the options structure
"""
function nag_opt_read!(name::String, optfile::String, print::Bool = false)

    options = zeros(Uint8,1440)
    reset_nag_error()
    ccall((:e04xxc, :libnagc_nag), Void, (Ptr{Void},), options)
    ccall((:e04xyc, :libnagc_nag), Void,
          (Ptr{Uint8}, Ptr{Uint8}, Ptr{Void}, Cint, Ptr{Uint8}, Ptr{Void}),
          name, optfile, options, print, "stdout", NAG_ERROR)
    return options
end

# --------------------------------------------------------------

@doc "$(section_str) :
      See $(nag_doc_str) for further details
     " nag_opt_lp!
"""
  nag_opt_lp! (e04mfc)

  solves linear programming (LP) problems of the form

  minimize_{x ∈ ℝⁿ} cᵀx  subject to l ≤ ⟦ x Ax ⟧ᵀ ≤ u

  where
  * A     an m by n matrix.
  * bl,bu an [n + nclin] vector 
  * c     an n element vector
  * x     an c element vector (initial guess returns opt value)
  * optfile filename to populate NAG options
  * transpose logical since NAG is row-major
                    true  the rows are linear constraints
                    false the columns are linear constraints

  examples:

  nag_opt_lp!(A,bl,bu,c,x)

  -------------------------------------------------------------

   Comments:

"""
function nag_opt_lp!(
    A         :: Matrix{Float64},
    bl        :: Vector{Float64},
    bu        :: Vector{Float64},
    c         :: Vector{Float64},
    x         :: Vector{Float64};
    optfile   :: String = "",
    transpose :: Bool = true,
)

    transpose && (A = A')

    n = length(c)
    tda, nclin = size(A)

    nclin > 0 && tda >= n   ||
        error("bad linear constraint dimensions (tda ≱ n): $tda ≱ $n")
    length(bl) == n + nclin ||
        error("wrong number of lower bounds: $(length(bl)) ≠ $(n + nclin)")
    length(bu) == n + nclin ||
        error("wrong number of upper bounds: $(length(bu)) ≠ $(n + nclin)")
    length(bl) == length(bu) ||
        error("bounds vectors bl, bu must have matching length")
    lexcmp(bl,bu) <= 0      ||
        error("lower bounds cannot be greater than upper bounds")
    length(c) == n          ||
        error("wrong number of coefficients: $(length(c)) ≠ $n")
    length(x) == n          ||
        error("wrong data vector size: $(length(x)) ≠ $n")

    objf = zeros()
    options = isempty(optfile) ? C_NULL :
        convert(Ptr{Void}, nag_opt_read!("e04mfc", optfile))

    reset_nag_error()
    ccall((:e04mfc,:libnagc_nag), Void,
           (NagInt, NagInt, Ptr{Float64}, NagInt, Ptr{Float64}, Ptr{Float64},
            Ptr{Float64}, Ptr{Float64}, Ptr{Float64}, Ptr{Void}, Ptr{Void}, Ptr{Void}),
           n, nclin, A, tda, bl, bu, c, x, objf, options, C_NULL, NAG_ERROR)

    return x, objf[]
end

# --------------------------------------------------------------

@doc "$(section_str) :" nag_opt_nlp!
"""
  nag_opt_nlp (e04ucc)

  solves nonlinear programming problems of the form

 minimize_{x ∈ ℝⁿ} F(x)  subject to l ≤ ⟦ x Ax c(x)⟧ᵀ ≤ u

 for sufficiently smooth functions F subject to constraints.

  where
          F the objective function, is a nonlinear function
          Aₗ an nₗ by n constant matrix.
      bl,bu an [n + nclin] vector 
          c an n\_N element vector
          x an c element vector (initial guess returns opt value)
    optfile filename to populate NAG options
  transpose logical since NAG is row-major
                    true  the rows are linear constraints
                    false the columns are linear constraints
  -------------------------------------------------------------

   Comments:

   see nag.co.uk/numeric/cl/nagdoc_cl26/html/e04/e04ucc.html
       for further details.

   the matrix A\_L and the vector c may be empty
   equality constraints are specified as bl\_i = bu\_i
   unbounded constraints are expressed as options.inf_bound
   the objective and constraint functions are assumed to be in ℂ²
"""
function nag_opt_nlp!(
    A  :: Matrix{Float64},
    bl :: Vector{Float64},
    bu :: Vector{Float64},
    x  :: Vector{Float64},
    objfun! :: Function,
    confun! :: Function,
    optfile :: String = "",
    transpose :: Bool = true,
)

    transpose && (A = A')

    # extract various dimensions
    n = length(x)
    tda, nclin = size(A)
    ncnlin = length(bl) - n - nclin

    # check for usage problems
    
    length(bl) == length(bu) ||
        error("bounds vectors must have matching length")
    lexcmp(bl,bu) <= 0       ||
        error("lower bounds cannot be greater than upper bounds")
    0 <= ncnlin              ||
        error("as many bounds as variables and linear constraints must be given")
    nclin == 0 || n <= tda   ||
        error("second dimension of linear coefficients too small")

    # allocate output variables
    objf = zeros()
    g = zeros(n)

    # save callbacks in globals
    objfunref[1] = objfun!
    confunref[1] = confun!

    options = isempty(optfile) ? C_NULL :
        convert(Ptr{Void}, nag_opt_read!("e04ucc", optfile))

    reset_nag_error()
    ccall((:e04ucc, :libnagc_nag), Void,
          (NagInt, NagInt, NagInt, Ptr{Float64},
           NagInt, Ptr{Float64}, Ptr{Float64},
           Ptr{Void}, Ptr{Void},
           Ptr{Float64}, Ptr{Float64}, Ptr{Float64},
           Ptr{Void}, Ptr{Void}, Ptr{Void}),
          n, nclin, ncnlin, A,
          tda, bl, bu,
          c_objfun, c_confun,
          x, objf, g,
          options, C_NULL, NAG_ERROR)

    return x, objf[], g
end

