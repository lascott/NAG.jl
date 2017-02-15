# --------------------------------------------------------------
# NAG.jl interface to the NAG library in C
#
# Commentary
#
# Section translated from nag_types.h
# also see NAG Essential Introduction 3.2.1.1  NAG data types
# NAG shared libraries are normally placed in opt/NAG
#
# Search code
#
#   [FAILS] marks problem code
#
# See also
#
#   GSL.jl
#       basis for the metaprogramming design employed here.
#   CPLEX.jl
#       another related interface to a scientific library
#
#  Copyright (C) 2017  Louis Scott
#  
# --------------------------------------------------------------

__precompile__(true)

module NAG

using Compat

include("Constants.jl")
include("NAG_Errors.jl")
include("_G01.jl")
include("_S.jl")

@static if is_windows()
    const NagInt = Int32
    const NagDouble = Float64
    const NagComplex = Complex128
else
    const NagInt = Int
    const NagDouble = Float64
    const NagComplex = Complex128
end
const Nag_ColMajor = NagInt(102)

export
    nag_licence_query, nag_license_query
#    nag_complex_polygamma,
#    nag_opt_read!,
#    nag_opt_nlp!,
#    nag_1d_quad_inf_1,
#    nag_zero_cont_func_brent,
#    nag_opt_lp!,
#    nag_nearest_correlation!,
#    nag_nearest_correlation,
    

# NAG licence is not open,this next line must be specific to your details,
# or add it to the lib path export LD_LIBRARY_PATH=/opt/NAG/cll6i25dcl/lib:$LD_LIBRARY_PATH

const libnagc_nag = "~/NAG/cll6i25dcl/lib/libnagc_nag.so"

nag_licence_query() = ccall((:a00acc, :libnagc_nag), Cint, ()) == 1
const nag_license_query = nag_licence_query # US vs UK spelling
nag_license_query() || warn("Cannot acquire a NAG license.")


function __init__()
    try
        nag_licence_query() 
    catch
        throw(LoadError("NAG Library is not installed."))
    end
end


end # module
