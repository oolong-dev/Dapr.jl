# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct SignCertificateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SignCertificateRequest(; kwargs...)
        obj = new(meta(SignCertificateRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SignCertificateRequest
const __meta_SignCertificateRequest = Ref{ProtoMeta}()
function meta(::Type{SignCertificateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SignCertificateRequest)
            __meta_SignCertificateRequest[] = target = ProtoMeta(SignCertificateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :token => AbstractString, :trust_domain => AbstractString, :namespace => AbstractString, :certificate_signing_request => Vector{UInt8}]
            meta(target, SignCertificateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SignCertificateRequest[]
    end
end
function Base.getproperty(obj::SignCertificateRequest, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :token
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :trust_domain
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :namespace
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :certificate_signing_request
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct SignCertificateResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SignCertificateResponse(; kwargs...)
        obj = new(meta(SignCertificateResponse), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SignCertificateResponse
const __meta_SignCertificateResponse = Ref{ProtoMeta}()
function meta(::Type{SignCertificateResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SignCertificateResponse)
            __meta_SignCertificateResponse[] = target = ProtoMeta(SignCertificateResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:workload_certificate => Vector{UInt8}, :trust_chain_certificates => Base.Vector{Vector{UInt8}}, :valid_until => ProtoBuf.google.protobuf.Timestamp]
            meta(target, SignCertificateResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SignCertificateResponse[]
    end
end
function Base.getproperty(obj::SignCertificateResponse, name::Symbol)
    if name === :workload_certificate
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :trust_chain_certificates
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    elseif name === :valid_until
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Timestamp
    else
        getfield(obj, name)
    end
end

# service methods for CA
const _CA_methods = MethodDescriptor[
        MethodDescriptor("SignCertificate", 1, SignCertificateRequest, SignCertificateResponse)
    ] # const _CA_methods
const _CA_desc = ServiceDescriptor("dapr.proto.sentry.v1.CA", 1, _CA_methods)

CA(impl::Module) = ProtoService(_CA_desc, impl)

mutable struct CAStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    CAStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_CA_desc, channel))
end # mutable struct CAStub

mutable struct CABlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    CABlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_CA_desc, channel))
end # mutable struct CABlockingStub

SignCertificate(stub::CAStub, controller::ProtoRpcController, inp::SignCertificateRequest, done::Function) = call_method(stub.impl, _CA_methods[1], controller, inp, done)
SignCertificate(stub::CABlockingStub, controller::ProtoRpcController, inp::SignCertificateRequest) = call_method(stub.impl, _CA_methods[1], controller, inp)

export SignCertificateRequest, SignCertificateResponse, CA, CAStub, CABlockingStub, SignCertificate
