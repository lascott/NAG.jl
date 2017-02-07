# --------------------------------------------------------------
#  s – Approximations of Special Functions
#      nag.co.uk/numeric/cl/nagdoc_cl26/html/s/sconts.html
#
#  Commentary
#
#      No clang.
#      A little awk/sed knowledge as the .h files are very structured.
#      I capture a large fraction with these simple variants.
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

section_str = :"Approximations of Special Functions"
nag_doc_str = :"see nag.co.uk/numeric/cl/nagdoc_cl26/html/s/sconts.html"

export s01bac, s10abc, s10acc, s11aac, s11acc, s13aac, s13acc, s14aac, s14abc, s14acc, s14ahc, s15agc, s17acc, s17adc, s17aec, s17afc, s17agc, s17ahc, s17ajc, s17akc, s18acc, s18adc, s18aec, s18afc, s18ccc, s18cdc, s19aac, s19abc, s19acc, s19adc

fn_type_str = :"return double, inputs (double x, NagError *fail)"
call_form = :"ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                      (NagDouble, Ptr{Void}),
                     x, NAG_ERROR)"
		

for nagf in (:s01bac, :s10abc, :s10acc, :s11aac, :s11acc, :s13aac, :s13acc, :s14aac, :s14abc, :s14acc, :s14ahc, :s15agc, :s17acc, :s17adc, :s17aec, :s17afc, :s17agc, :s17ahc, :s17ajc, :s17akc, :s18acc, :s18adc, :s18aec, :s18afc, :s18ccc, :s18cdc, :s19aac, :s19abc, :s19acc, :s19adc,
    )
    @eval begin
    	@doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	  
        function $nagf(x::Number)
	    reset_nag_error()
	    ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                      (NagDouble, Ptr{Void}),
                     x, NAG_ERROR)
	end
    end
end

# list of const aliases with nag_const_substnames.txt
 const nag_shifted_log = s01bac
 const nag_sinh = s10abc
 const nag_cosh = s10acc
 const nag_arctanh = s11aac
 const nag_arccosh = s11acc
 const nag_exp_integral = s13aac
 const nag_cos_integral = s13acc
 const nag_gamma = s14aac
 const nag_log_gamma = s14abc
 const nag_polygamma_fun = s14acc
 const nag_scaled_log_gamma = s14ahc
 const nag_erfcx = s15agc
 const nag_bessel_y0 = s17acc
 const nag_bessel_y1 = s17adc
 const nag_bessel_j0 = s17aec
 const nag_bessel_j1 = s17afc
 const nag_airy_ai = s17agc
 const nag_airy_bi = s17ahc
 const nag_airy_ai_deriv = s17ajc
 const nag_airy_bi_deriv = s17akc
 const nag_bessel_k0 = s18acc
 const nag_bessel_k1 = s18adc
 const nag_bessel_i0 = s18aec
 const nag_bessel_i1 = s18afc
 const nag_bessel_k0_scaled = s18ccc
 const nag_bessel_k1_scaled = s18cdc
 const nag_kelvin_ber = s19aac
 const nag_kelvin_bei = s19abc
 const nag_kelvin_ker = s19acc
 const nag_kelvin_kei = s19adc

# -----------------------------------------------

fn_type_str = "return double, inputs (double x,)"

export  s10aac, s11abc, s13adc, s15abc, s15acc, s15adc, s15aec, s15afc, s18cec, s18cfc, s20acc, s20adc

for nagf in (:s10aac, :s11abc, :s13adc, :s15abc, :s15acc, :s15adc, :s15aec, :s15afc, :s18cec, :s18cfc, :s20acc, :s20adc,
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
        function $nagf(x::Number)
	    ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, ),
                x,)
	end
	end
end

# list of const aliases
 const nag_tanh = s10aac
 const nag_arcsinh = s11abc
 const nag_sin_integral = s13adc
 const nag_cumul_normal = s15abc
 const nag_cumul_normal_complem = s15acc
 const nag_erfc = s15adc
 const nag_erf = s15aec
 const nag_dawson = s15afc
 const nag_bessel_i0_scaled = s18cec
 const nag_bessel_i1_scaled = s18cfc
 const nag_fresnel_s = s20acc
 const nag_fresnel_c = s20adc

# -----------------------------------------------
# [FAILS]
# NAG.nag_complex_erfc(2.0 + 2.0im)
# ERROR: ccall: return type doesn't correspond to a C type
# in s15ddc(::Complex{Float64}) at /home/louis/.julia/v0.6/NAG/src/_S2.jl:113
#
# Complex numbers are Immutable Composite Types,
# we are relying on ccall, cconvert to do the right thing
# some syntactic sugar needed
#
fn_type_str = "return complex, inputs (complex z, NagError *fail)"

export s14agc, s15ddc

# iterate over nag_evalsubst.txt
for nagf in (:s14agc, :s15ddc,
    )
    @eval begin
    	@doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	  
        function $nagf(z::Number)
	    reset_nag_error()
	    ccall(($(string(nagf)), :libnagc_nag), NagComplex,
                (NagComplex, Ptr{Void}),
                z, NAG_ERROR)		
	end
    end
end

# list of const aliases
 const nag_complex_log_gamma = s14agc
 const nag_complex_erfc = s15ddc

# -----------------------------------------------

fn_type_str = "return double, inputs (double x, Integer k, NagError *fail)"

export s14aec

for nagf in (:s14aec,
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
        function $nagf(x::Number, k::Integer)
	    reset_nag_error()
	    ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, NagInt, Ptr{Void}),
                x, k, NAG_ERROR)   
	end
	end
end

# list of const aliases
const nag_real_polygamma = s14aec

# -----------------------------------------------