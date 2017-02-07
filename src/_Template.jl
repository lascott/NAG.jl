# --------------------------------------------------------------
#  s – Approximations of Special Functions
#      nag.co.uk/numeric/cl/nagdoc_cl26/html/s/sconts.html
#
#      No clang.
#      A little awk/sed knowledge as the .h files are very structured.
#      I capture a large fraction with these simple variants.
# --------------------------------------------------------------

section_str = :"Approximations of Special Functions"
nag_doc_str = :"see nag.co.uk/numeric/cl/nagdoc_cl26/html/s/sconts.html"


# -----------------------------------------------

fn_type_str = "return double, inputs (double x, NagError *fail)"

#export from nag_sublist.txt
export #fill

# iterate over nag_evalsubst.txt
for nagf in ( #fill
    )
    @eval begin
    	@doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	  
        function $nagf(x::Number)
	    reset_nag_error()
	    res = ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, Ptr{Void}),
                x, NAG_ERROR)		
	end
	end
end

# list of const aliases with nag_const_substnames.txt
#fill

# -----------------------------------------------

fn_type_str = "return double, inputs (double x,)"

export #fill

for nagf in ( #fill
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
        function $nagf(x::Number)
	    res = ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, ),
                x,)
	end
	end
end

# list of const aliases
#fill

# -----------------------------------------------

fn_type_str = "return complex, inputs (complex z, NagError *fail)"

#export from nag_sublist.txt
export #fill

# iterate over nag_evalsubst.txt
for nagf in ( #fill
    )
    @eval begin
    	@doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
	  
        function $nagf(z::Number)
	    reset_nag_error()
	    res = ccall(($(string(nagf)), :libnagc_nag), NagComplex,
                (NagComplex, Ptr{Void}),
                z, NAG_ERROR)		
	end
	end
end

# list of const aliases
#fill

# -----------------------------------------------

fn_type_str = "return double, inputs (double x, Integer k, NagError *fail)"

export #fill

for nagf in ( #fill
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
        function $nagf(x::Number, k::Integer)
	    reset_nag_error()
	    res, NAG_ERROR = ccall(($(string(nagf)), :libnagc_nag), NagDouble,
                (NagDouble, NagInt, Ptr{Void}),
                z, k, NAG_ERROR)   
	end
	end
end

# list of const aliases
#fill

# -----------------------------------------------

fn_type_str = "return complex, inputs (Complex z, Integer k, NagError *fail)"

export #fill

for nagf in ( #fill
    )
    @eval begin
        @doc "$(section_str) : Fns that $(fn_type_str) $(nag_doc_str) " $nagf
        function $nagf(z::Number, k::Integer)
	    reset_nag_error()
	    res, NAG_ERROR = ccall(($(string(nagf)), :libnagc_nag), NagComplex,
                (NagComplex, NagInt, Ptr{Void}),
                z, k, NAG_ERROR)   
	end
	end
end

# list of const aliases
#fill
