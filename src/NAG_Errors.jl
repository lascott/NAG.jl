# --------------------------------------------------------------
# Error handling, see NAG documentation, essential introduction
# Section 3.6  NAG Error Handling and the fail Argument
# and nag_errlist.h just a few for now
#   Code value          Error name
#   ----------          ----------
#     70              NE_BAD_PARAM
#     88              NE_INCOMPAT_PARAM
#    133              NE_COMPLEX_ZERO
#    245              NE_NOT_MONOTONIC
#    357              NE_TOO_MANY_ITER
#    366              NE_SINGULAR
#   2049              NE_INITIALIZATION
# --------------------------------------------------------------

import Base.show

export last_nag_error, reset_nag_error, NagError

type NagError <: Exception
    code::Int
    name::String
    message::String
end

show(io::IO, e::NagError) =
    print(io, "NAG Error function \"$(e.name)\" [$(e.code)] – $(e.message)")

# Question: 544 is 2*sizeof(Cint) + 512 ?

const NAG_ERROR = zeros(UInt8,544)
const nag_errors = Array(NagError)
nag_errors[] = NagError(0, "", "NO_ERROR")

cstr_to_array(p::Ptr{UInt8}, own::Bool = false) =
    pointer_to_array(p, int(ccall(:strlen, Csize_t, (Ptr{UInt8},), p)), own)

function error_handler(msg::Ptr{UInt8}, code::Cint, name::Ptr{UInt8})
    if code == 0; return; end # success NE_NOERROR
    
    msg = String(copy(cstr_to_array(msg)))
    name = String(copy(cstr_to_array(name)))
    nag_errors[] = NagError(int(code), name, msg)
    warn(nag_errors[])
    throw(nag_errors[]) # throw all for now   
end
const ptr_error_handler = cfunction(error_handler, Void, (Ptr{UInt8}, Cint, Ptr{UInt8}))

function reset_nag_error()
    fill!(NAG_ERROR, 0)
    unsafe_store!(
        convert(Ptr{Ptr{Void}}, pointer(NAG_ERROR)) + 2*sizeof(Cint) + 512,
        ptr_error_handler
    )
end

reset_nag_error()

last_nag_error() = nag_errors[]

