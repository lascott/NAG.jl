# --------------------------------------------------------------
#  d01 – Quadrature
#      nag.co.uk/numeric/cl/nagdoc_cl26/html/d01/d01conts.html
#
#  Commentary
#
#
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

section_str = :"Quadrature"
nag_doc_str = :"see nag.co.uk/numeric/cl/nagdoc_cl26/html/d01/d01conts.html"

# --------------------------------------------------------------

export nag_1d_quad_inf_1

const quadfunref = Array(Function)
quad_fun_wrapper(x::Float64, comm::Ptr{NagInt}) = quadfunref[1](x)::Float64
const c_quadfun = cfunction(quad_fun_wrapper, Float64, (Float64, Ptr{NagInt}))

function nag_1d_quad_inf_1(
    f :: Function,
    boundinf :: Symbol = :Infinite,
    bound :: Float64 = 0.0;
    epsabs :: Float64 = 0.0,
    epsrel :: Float64 = sqrt(eps(Float64)),
    max_num_subint :: NagInt = int32(1e7),
)
#
# nag_1d_quad_inf_1 (d01smc)
# calculates an approximation to the integral of a function f(x)
# over an infinite or semi-infinite interval [a, b]
#
# where
#               f user suppplied function to integrate
#           bound finite limit of integration interval (double if present).
#          epsabs absolute accuracy required (double)
#          epsrel relative accuracy required (double)
#  max_num_subint an upper bound on the number of subintervals to use (integer)
#  -------------------------------------------------------------
#
#   Comments:
#   see nag.co.uk/numeric/cl/nagdoc_cl26/html/d01/d01smc.html
#       for further details.
#
#   comm is a Pointer to a structure of type Nag_User

    max_num_subint > 0 || error("max num subint must be > 0")
    boundinf_val =
        boundinf == :UpperSemiInfinite ? int32(1076 + 0) :
        boundinf == :LowerSemiInfinite ? int32(1076 + 1) :
        boundinf == :Infinite          ? int32(1076 + 2) :
        error("""
        invalid boundinf symbol: $boundinf
        must be one of: UpperSemiInfinite, LowerSemiInfinite, Infinite
        """)

    # allocate output variables
    result = zeros()
    abserr = zeros()
    qp = zeros(Uint8, 48)
    comm = zeros(Uint8, 8)

    quadfunref[] = f

    reset_nag_error()
    ccall((:d01smc, :libnagc_nag), Void,
        (Ptr{Void}, NagInt, Float64, Float64,
         Float64, NagInt, Ptr{Float64}, Ptr{Float64},
         Ptr{Void}, Ptr{Void}, Ptr{Void}),
        c_quadfun, boundinf_val, bound, epsabs,
        epsrel, max_num_subint, result, abserr,
        qp, comm, NAG_ERROR)

    return result[], abserr[]
end


# -----------------------------------------------