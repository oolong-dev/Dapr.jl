# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ._ProtoBuf_Top_.dapr

mutable struct Actor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Actor(; kwargs...)
        obj = new(meta(Actor), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Actor
const __meta_Actor = Ref{ProtoMeta}()
function meta(::Type{Actor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Actor)
            __meta_Actor[] = target = ProtoMeta(Actor)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString]
            meta(target, Actor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Actor[]
    end
end
function Base.getproperty(obj::Actor, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ListStringValue <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListStringValue(; kwargs...)
        obj = new(meta(ListStringValue), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListStringValue
const __meta_ListStringValue = Ref{ProtoMeta}()
function meta(::Type{ListStringValue})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListStringValue)
            __meta_ListStringValue[] = target = ProtoMeta(ListStringValue)
            allflds = Pair{Symbol,Union{Type,String}}[:values => Base.Vector{AbstractString}]
            meta(target, ListStringValue, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListStringValue[]
    end
end
function Base.getproperty(obj::ListStringValue, name::Symbol)
    if name === :values
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct InternalInvokeResponse_HeadersEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InternalInvokeResponse_HeadersEntry(; kwargs...)
        obj = new(meta(InternalInvokeResponse_HeadersEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InternalInvokeResponse_HeadersEntry (mapentry)
const __meta_InternalInvokeResponse_HeadersEntry = Ref{ProtoMeta}()
function meta(::Type{InternalInvokeResponse_HeadersEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InternalInvokeResponse_HeadersEntry)
            __meta_InternalInvokeResponse_HeadersEntry[] = target = ProtoMeta(InternalInvokeResponse_HeadersEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => ListStringValue]
            meta(target, InternalInvokeResponse_HeadersEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InternalInvokeResponse_HeadersEntry[]
    end
end
function Base.getproperty(obj::InternalInvokeResponse_HeadersEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::ListStringValue
    else
        getfield(obj, name)
    end
end

mutable struct InternalInvokeResponse_TrailersEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InternalInvokeResponse_TrailersEntry(; kwargs...)
        obj = new(meta(InternalInvokeResponse_TrailersEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InternalInvokeResponse_TrailersEntry (mapentry)
const __meta_InternalInvokeResponse_TrailersEntry = Ref{ProtoMeta}()
function meta(::Type{InternalInvokeResponse_TrailersEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InternalInvokeResponse_TrailersEntry)
            __meta_InternalInvokeResponse_TrailersEntry[] = target = ProtoMeta(InternalInvokeResponse_TrailersEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => ListStringValue]
            meta(target, InternalInvokeResponse_TrailersEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InternalInvokeResponse_TrailersEntry[]
    end
end
function Base.getproperty(obj::InternalInvokeResponse_TrailersEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::ListStringValue
    else
        getfield(obj, name)
    end
end

mutable struct InternalInvokeRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InternalInvokeRequest_MetadataEntry(; kwargs...)
        obj = new(meta(InternalInvokeRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InternalInvokeRequest_MetadataEntry (mapentry)
const __meta_InternalInvokeRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{InternalInvokeRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InternalInvokeRequest_MetadataEntry)
            __meta_InternalInvokeRequest_MetadataEntry[] = target = ProtoMeta(InternalInvokeRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => ListStringValue]
            meta(target, InternalInvokeRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InternalInvokeRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::InternalInvokeRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::ListStringValue
    else
        getfield(obj, name)
    end
end

mutable struct InternalInvokeResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InternalInvokeResponse(; kwargs...)
        obj = new(meta(InternalInvokeResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InternalInvokeResponse
const __meta_InternalInvokeResponse = Ref{ProtoMeta}()
function meta(::Type{InternalInvokeResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InternalInvokeResponse)
            __meta_InternalInvokeResponse[] = target = ProtoMeta(InternalInvokeResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:status => Status, :headers => Base.Dict{AbstractString,ListStringValue}, :trailers => Base.Dict{AbstractString,ListStringValue}, :message => dapr.proto.common.v1.InvokeResponse]
            meta(target, InternalInvokeResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InternalInvokeResponse[]
    end
end
function Base.getproperty(obj::InternalInvokeResponse, name::Symbol)
    if name === :status
        return (obj.__protobuf_jl_internal_values[name])::Status
    elseif name === :headers
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,ListStringValue}
    elseif name === :trailers
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,ListStringValue}
    elseif name === :message
        return (obj.__protobuf_jl_internal_values[name])::dapr.proto.common.v1.InvokeResponse
    else
        getfield(obj, name)
    end
end

mutable struct InternalInvokeRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InternalInvokeRequest(; kwargs...)
        obj = new(meta(InternalInvokeRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InternalInvokeRequest
const __meta_InternalInvokeRequest = Ref{ProtoMeta}()
function meta(::Type{InternalInvokeRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InternalInvokeRequest)
            __meta_InternalInvokeRequest[] = target = ProtoMeta(InternalInvokeRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:ver => Int32, :metadata => Base.Dict{AbstractString,ListStringValue}, :message => dapr.proto.common.v1.InvokeRequest, :actor => Actor]
            meta(target, InternalInvokeRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InternalInvokeRequest[]
    end
end
function Base.getproperty(obj::InternalInvokeRequest, name::Symbol)
    if name === :ver
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,ListStringValue}
    elseif name === :message
        return (obj.__protobuf_jl_internal_values[name])::dapr.proto.common.v1.InvokeRequest
    elseif name === :actor
        return (obj.__protobuf_jl_internal_values[name])::Actor
    else
        getfield(obj, name)
    end
end

# service methods for ServiceInvocation
const _ServiceInvocation_methods = MethodDescriptor[
        MethodDescriptor("CallActor", 1, InternalInvokeRequest, InternalInvokeResponse),
        MethodDescriptor("CallLocal", 2, InternalInvokeRequest, InternalInvokeResponse)
    ] # const _ServiceInvocation_methods
const _ServiceInvocation_desc = ServiceDescriptor("dapr.proto.internals.v1.ServiceInvocation", 1, _ServiceInvocation_methods)

ServiceInvocation(impl::Module) = ProtoService(_ServiceInvocation_desc, impl)

mutable struct ServiceInvocationStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    ServiceInvocationStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_ServiceInvocation_desc, channel))
end # mutable struct ServiceInvocationStub

mutable struct ServiceInvocationBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    ServiceInvocationBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_ServiceInvocation_desc, channel))
end # mutable struct ServiceInvocationBlockingStub

CallActor(stub::ServiceInvocationStub, controller::ProtoRpcController, inp::InternalInvokeRequest, done::Function) = call_method(stub.impl, _ServiceInvocation_methods[1], controller, inp, done)
CallActor(stub::ServiceInvocationBlockingStub, controller::ProtoRpcController, inp::InternalInvokeRequest) = call_method(stub.impl, _ServiceInvocation_methods[1], controller, inp)

CallLocal(stub::ServiceInvocationStub, controller::ProtoRpcController, inp::InternalInvokeRequest, done::Function) = call_method(stub.impl, _ServiceInvocation_methods[2], controller, inp, done)
CallLocal(stub::ServiceInvocationBlockingStub, controller::ProtoRpcController, inp::InternalInvokeRequest) = call_method(stub.impl, _ServiceInvocation_methods[2], controller, inp)

export Actor, InternalInvokeRequest_MetadataEntry, InternalInvokeRequest, InternalInvokeResponse_HeadersEntry, InternalInvokeResponse_TrailersEntry, InternalInvokeResponse, ListStringValue, ServiceInvocation, ServiceInvocationStub, ServiceInvocationBlockingStub, CallActor, CallLocal
# mapentries: "InternalInvokeResponse_TrailersEntry" => ("AbstractString", "ListStringValue"), "InternalInvokeRequest_MetadataEntry" => ("AbstractString", "ListStringValue"), "InternalInvokeResponse_HeadersEntry" => ("AbstractString", "ListStringValue")
