# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct ListComponentsRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListComponentsRequest(; kwargs...)
        obj = new(meta(ListComponentsRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListComponentsRequest
const __meta_ListComponentsRequest = Ref{ProtoMeta}()
function meta(::Type{ListComponentsRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListComponentsRequest)
            __meta_ListComponentsRequest[] = target = ProtoMeta(ListComponentsRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:namespace => AbstractString]
            meta(target, ListComponentsRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListComponentsRequest[]
    end
end
function Base.getproperty(obj::ListComponentsRequest, name::Symbol)
    if name === :namespace
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ComponentUpdateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ComponentUpdateRequest(; kwargs...)
        obj = new(meta(ComponentUpdateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ComponentUpdateRequest
const __meta_ComponentUpdateRequest = Ref{ProtoMeta}()
function meta(::Type{ComponentUpdateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ComponentUpdateRequest)
            __meta_ComponentUpdateRequest[] = target = ProtoMeta(ComponentUpdateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:namespace => AbstractString]
            meta(target, ComponentUpdateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ComponentUpdateRequest[]
    end
end
function Base.getproperty(obj::ComponentUpdateRequest, name::Symbol)
    if name === :namespace
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ComponentUpdateEvent <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ComponentUpdateEvent(; kwargs...)
        obj = new(meta(ComponentUpdateEvent), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ComponentUpdateEvent
const __meta_ComponentUpdateEvent = Ref{ProtoMeta}()
function meta(::Type{ComponentUpdateEvent})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ComponentUpdateEvent)
            __meta_ComponentUpdateEvent[] = target = ProtoMeta(ComponentUpdateEvent)
            allflds = Pair{Symbol,Union{Type,String}}[:component => Vector{UInt8}]
            meta(target, ComponentUpdateEvent, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ComponentUpdateEvent[]
    end
end
function Base.getproperty(obj::ComponentUpdateEvent, name::Symbol)
    if name === :component
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct ListComponentResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListComponentResponse(; kwargs...)
        obj = new(meta(ListComponentResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListComponentResponse
const __meta_ListComponentResponse = Ref{ProtoMeta}()
function meta(::Type{ListComponentResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListComponentResponse)
            __meta_ListComponentResponse[] = target = ProtoMeta(ListComponentResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:components => Base.Vector{Vector{UInt8}}]
            meta(target, ListComponentResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListComponentResponse[]
    end
end
function Base.getproperty(obj::ListComponentResponse, name::Symbol)
    if name === :components
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    else
        getfield(obj, name)
    end
end

mutable struct GetConfigurationRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetConfigurationRequest(; kwargs...)
        obj = new(meta(GetConfigurationRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetConfigurationRequest
const __meta_GetConfigurationRequest = Ref{ProtoMeta}()
function meta(::Type{GetConfigurationRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetConfigurationRequest)
            __meta_GetConfigurationRequest[] = target = ProtoMeta(GetConfigurationRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :namespace => AbstractString]
            meta(target, GetConfigurationRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetConfigurationRequest[]
    end
end
function Base.getproperty(obj::GetConfigurationRequest, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :namespace
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetConfigurationResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetConfigurationResponse(; kwargs...)
        obj = new(meta(GetConfigurationResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetConfigurationResponse
const __meta_GetConfigurationResponse = Ref{ProtoMeta}()
function meta(::Type{GetConfigurationResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetConfigurationResponse)
            __meta_GetConfigurationResponse[] = target = ProtoMeta(GetConfigurationResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:configuration => Vector{UInt8}]
            meta(target, GetConfigurationResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetConfigurationResponse[]
    end
end
function Base.getproperty(obj::GetConfigurationResponse, name::Symbol)
    if name === :configuration
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct ListSubscriptionsResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListSubscriptionsResponse(; kwargs...)
        obj = new(meta(ListSubscriptionsResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListSubscriptionsResponse
const __meta_ListSubscriptionsResponse = Ref{ProtoMeta}()
function meta(::Type{ListSubscriptionsResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListSubscriptionsResponse)
            __meta_ListSubscriptionsResponse[] = target = ProtoMeta(ListSubscriptionsResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:subscriptions => Base.Vector{Vector{UInt8}}]
            meta(target, ListSubscriptionsResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListSubscriptionsResponse[]
    end
end
function Base.getproperty(obj::ListSubscriptionsResponse, name::Symbol)
    if name === :subscriptions
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    else
        getfield(obj, name)
    end
end

# service methods for Operator
const _Operator_methods = MethodDescriptor[
        MethodDescriptor("ComponentUpdate", 1, ComponentUpdateRequest, Channel{ComponentUpdateEvent}),
        MethodDescriptor("ListComponents", 2, ListComponentsRequest, ListComponentResponse),
        MethodDescriptor("GetConfiguration", 3, GetConfigurationRequest, GetConfigurationResponse),
        MethodDescriptor("ListSubscriptions", 4, ProtoBuf.google.protobuf.Empty, ListSubscriptionsResponse)
    ] # const _Operator_methods
const _Operator_desc = ServiceDescriptor("dapr.proto.operator.v1.Operator", 1, _Operator_methods)

Operator(impl::Module) = ProtoService(_Operator_desc, impl)

mutable struct OperatorStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    OperatorStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Operator_desc, channel))
end # mutable struct OperatorStub

mutable struct OperatorBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    OperatorBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Operator_desc, channel))
end # mutable struct OperatorBlockingStub

ComponentUpdate(stub::OperatorStub, controller::ProtoRpcController, inp::ComponentUpdateRequest, done::Function) = call_method(stub.impl, _Operator_methods[1], controller, inp, done)
ComponentUpdate(stub::OperatorBlockingStub, controller::ProtoRpcController, inp::ComponentUpdateRequest) = call_method(stub.impl, _Operator_methods[1], controller, inp)

ListComponents(stub::OperatorStub, controller::ProtoRpcController, inp::ListComponentsRequest, done::Function) = call_method(stub.impl, _Operator_methods[2], controller, inp, done)
ListComponents(stub::OperatorBlockingStub, controller::ProtoRpcController, inp::ListComponentsRequest) = call_method(stub.impl, _Operator_methods[2], controller, inp)

GetConfiguration(stub::OperatorStub, controller::ProtoRpcController, inp::GetConfigurationRequest, done::Function) = call_method(stub.impl, _Operator_methods[3], controller, inp, done)
GetConfiguration(stub::OperatorBlockingStub, controller::ProtoRpcController, inp::GetConfigurationRequest) = call_method(stub.impl, _Operator_methods[3], controller, inp)

ListSubscriptions(stub::OperatorStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty, done::Function) = call_method(stub.impl, _Operator_methods[4], controller, inp, done)
ListSubscriptions(stub::OperatorBlockingStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty) = call_method(stub.impl, _Operator_methods[4], controller, inp)

export ListComponentsRequest, ComponentUpdateRequest, ComponentUpdateEvent, ListComponentResponse, GetConfigurationRequest, GetConfigurationResponse, ListSubscriptionsResponse, Operator, OperatorStub, OperatorBlockingStub, ComponentUpdate, ListComponents, GetConfiguration, ListSubscriptions
