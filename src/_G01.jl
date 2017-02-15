# --------------------------------------------------------------
#  G01 – Simple Calculations on Statistical Data
#      nag.co.uk/numeric/cl/nagdoc_cl26/html/g01/g01conts.html
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

section_str = :"Simple Calculations on Statistical Data"
nag_doc_str = :"see nag.co.uk/numeric/cl/nagdoc_cl26/html/g01/g01conts.html"

# --------------------------------------------------------------

fn_type_str = :"return double, inputs (double x, NagError *fail)"

call_form = :"ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                      (NagDouble, Ptr{Void}),
                     x, NAG_ERROR)"
		
s_dict = Dict{Symbol, Symbol}(:g01ftc => :nag_deviates_landau)
   
for nagf in (:g01ftc,
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

s_dict = Dict{Symbol, Symbol}(:g01etc => :nag_prob_landau,:g01mbc => :nag_mills_ratio,:g01mtc => :nag_prob_density_landau,:g01ptc => :nag_moment_1_landau,:g01qtc => :nag_moment_2_landau,:g01rtc => :nag_prob_der_landau)
    
for nagf in (:g01etc, :g01mbc, :g01mtc, :g01ptc, :g01qtc, :g01rtc,
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

#=
# -----------------------------------------------
# 
# Complex numbers are Immutable Composite Types,
# we are relying on ccall, cconvert to do the right thing
#
fn_type_str = "return complex, inputs (complex z, NagError *fail)"

s_dict = Dict{Symbol, Symbol}()


for nagf in (
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

s_dict = Dict{Symbol, Symbol}()

for nagf in (
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

s_dict = Dict{Symbol, Symbol}()

for nagf in (
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

=#
# -----------------------------------------------