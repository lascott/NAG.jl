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

# --------------------------------------------------------------

fn_type_str = :"return double, inputs (double x, NagError *fail)"

call_form = :"ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                      (NagDouble, Ptr{Void}),
                     x, NAG_ERROR)"
		
s_dict = Dict{Symbol, Symbol}(:s01bac => :nag_shifted_log,:s10abc => :nag_sinh,:s10acc => :nag_cosh,:s11aac => :nag_arctanh,:s11acc => :nag_arccosh,:s13aac => :nag_exp_integral,:s13acc => :nag_cos_integral,:s14aac => :nag_gamma,:s14abc => :nag_log_gamma,:s14acc => :nag_polygamma_fun,:s14ahc => :nag_scaled_log_gamma,:s15agc => :nag_erfcx,:s17acc => :nag_bessel_y0,:s17adc => :nag_bessel_y1,:s17aec => :nag_bessel_j0,:s17afc => :nag_bessel_j1,:s17agc => :nag_airy_ai,:s17ahc => :nag_airy_bi,:s17ajc => :nag_airy_ai_deriv,:s17akc => :nag_airy_bi_deriv,:s18acc => :nag_bessel_k0,:s18adc => :nag_bessel_k1,:s18aec => :nag_bessel_i0,:s18afc => :nag_bessel_i1,:s18ccc => :nag_bessel_k0_scaled,:s18cdc => :nag_bessel_k1_scaled,:s19aac => :nag_kelvin_ber,:s19abc => :nag_kelvin_bei,:s19acc => :nag_kelvin_ker,:s19adc => :nag_kelvin_kei
   )
   
for nagf in (:s01bac, :s10abc, :s10acc, :s11aac, :s11acc, :s13aac, :s13acc, :s14aac, :s14abc, :s14acc, :s14ahc, :s15agc, :s17acc, :s17adc, :s17aec, :s17afc, :s17agc, :s17ahc, :s17ajc, :s17akc, :s18acc, :s18adc, :s18aec, :s18afc, :s18ccc, :s18cdc, :s19aac, :s19abc, :s19acc, :s19adc,
    )
    @eval begin
    	@doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	
	export $(s_dict[nagf])
        function $(s_dict[nagf])(x::Number)
            reset_nag_error()
	    res = ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                      (NagDouble, Ptr{Void}),
                     x, NAG_ERROR)
	end
    end
end

# -----------------------------------------------

fn_type_str = "return double, inputs (double x,)"

s_dict = Dict{Symbol, Symbol}(:s10aac => :nag_tanh,:s11abc => :nag_arcsinh,:s13adc => :nag_sin_integral,:s15abc => :nag_cumul_normal,:s15acc => :nag_cumul_normal_complem,:s15adc => :nag_erfc,:s15aec => :nag_erf,:s15afc => :nag_dawson,:s18cec => :nag_bessel_i0_scaled,:s18cfc => :nag_bessel_i1_scaled,:s20acc => :nag_fresnel_s,:s20adc => :nag_fresnel_c
    )
    
for nagf in (:s10aac, :s11abc, :s13adc, :s15abc, :s15acc, :s15adc, :s15aec, :s15afc, :s18cec, :s18cfc, :s20acc, :s20adc,
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	
	export $(s_dict[nagf])
        function $(s_dict[nagf])(x::Number)
	    ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, ),
                x,)
	end
    end
end


# -----------------------------------------------
# 
# Complex numbers are Immutable Composite Types,
# we are relying on ccall, cconvert to do the right thing
#
fn_type_str = "return complex, inputs (complex z, NagError *fail)"

s_dict = Dict{Symbol, Symbol}(:s14agc => :nag_complex_log_gamma,:s15ddc => :nag_complex_erfc)


for nagf in (:s14agc, :s15ddc,
    )
    @eval begin
    	@doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	
	export $(s_dict[nagf])  
        function $(s_dict[nagf])(z::Number)
	    reset_nag_error()
	    ccall(($(string(nagf)), :libnagc_nag), NagComplex,
                (NagComplex, Ptr{Void}),
                z, NAG_ERROR)		
	end
    end
end


# -----------------------------------------------

fn_type_str = "return double, inputs (double x, Integer k, NagError *fail)"

s_dict = Dict{Symbol, Symbol}(:s14aec => :nag_real_polygamma)

for nagf in (:s14aec,
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf

        export $(s_dict[nagf])
        function $(s_dict[nagf])(x::Number, k::Integer)
	    reset_nag_error()
	    ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, NagInt, Ptr{Void}),
                x, k, NAG_ERROR)   
	end
    end
end

# -----------------------------------------------

fn_type_str = "return complex, inputs (complex z, Integer k, NagError *fail)"

s_dict = Dict{Symbol, Symbol}(:s14afc => :nag_complex_polygamma)

for nagf in (:s14afc,
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf

        export $(s_dict[nagf])
        function $(s_dict[nagf])(z::Number, k::Integer)
	    reset_nag_error()
	    ccall(($(string(nagf)), :libnagc_nag), NagComplex,
                (NagComplex, NagInt, Ptr{Void}),
                z, k, NAG_ERROR)   
	end
    end
end


# -----------------------------------------------
