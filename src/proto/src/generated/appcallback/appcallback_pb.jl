# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf
import ._ProtoBuf_Top_.dapr

mutable struct TopicEventRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopicEventRequest(; kwargs...)
        obj = new(meta(TopicEventRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopicEventRequest
const __meta_TopicEventRequest = Ref{ProtoMeta}()
function meta(::Type{TopicEventRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopicEventRequest)
            __meta_TopicEventRequest[] = target = ProtoMeta(TopicEventRequest)
            fnum = Int[1,2,3,4,5,7,6,8,9]
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :source => AbstractString, :_type => AbstractString, :spec_version => AbstractString, :data_content_type => AbstractString, :data => Vector{UInt8}, :topic => AbstractString, :pubsub_name => AbstractString, :path => AbstractString]
            meta(target, TopicEventRequest, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopicEventRequest[]
    end
end
function Base.getproperty(obj::TopicEventRequest, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :source
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :spec_version
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data_content_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :topic
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :pubsub_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :path
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

const TopicEventResponse_TopicEventResponseStatus = (;[
    Symbol("SUCCESS") => Int32(0),
    Symbol("RETRY") => Int32(1),
    Symbol("DROP") => Int32(2),
]...)

mutable struct TopicEventResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopicEventResponse(; kwargs...)
        obj = new(meta(TopicEventResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopicEventResponse
const __meta_TopicEventResponse = Ref{ProtoMeta}()
function meta(::Type{TopicEventResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopicEventResponse)
            __meta_TopicEventResponse[] = target = ProtoMeta(TopicEventResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:status => Int32]
            meta(target, TopicEventResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopicEventResponse[]
    end
end
function Base.getproperty(obj::TopicEventResponse, name::Symbol)
    if name === :status
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct BindingEventRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BindingEventRequest_MetadataEntry(; kwargs...)
        obj = new(meta(BindingEventRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BindingEventRequest_MetadataEntry (mapentry)
const __meta_BindingEventRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{BindingEventRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BindingEventRequest_MetadataEntry)
            __meta_BindingEventRequest_MetadataEntry[] = target = ProtoMeta(BindingEventRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, BindingEventRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BindingEventRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::BindingEventRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct BindingEventRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BindingEventRequest(; kwargs...)
        obj = new(meta(BindingEventRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BindingEventRequest
const __meta_BindingEventRequest = Ref{ProtoMeta}()
function meta(::Type{BindingEventRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BindingEventRequest)
            __meta_BindingEventRequest[] = target = ProtoMeta(BindingEventRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :data => Vector{UInt8}, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, BindingEventRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BindingEventRequest[]
    end
end
function Base.getproperty(obj::BindingEventRequest, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

const BindingEventResponse_BindingEventConcurrency = (;[
    Symbol("SEQUENTIAL") => Int32(0),
    Symbol("PARALLEL") => Int32(1),
]...)

mutable struct BindingEventResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BindingEventResponse(; kwargs...)
        obj = new(meta(BindingEventResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BindingEventResponse
const __meta_BindingEventResponse = Ref{ProtoMeta}()
function meta(::Type{BindingEventResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BindingEventResponse)
            __meta_BindingEventResponse[] = target = ProtoMeta(BindingEventResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :states => Base.Vector{dapr.proto.common.v1.StateItem}, :to => Base.Vector{AbstractString}, :data => Vector{UInt8}, :concurrency => Int32]
            meta(target, BindingEventResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BindingEventResponse[]
    end
end
function Base.getproperty(obj::BindingEventResponse, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{dapr.proto.common.v1.StateItem}
    elseif name === :to
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :concurrency
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct TopicRule <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopicRule(; kwargs...)
        obj = new(meta(TopicRule), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopicRule
const __meta_TopicRule = Ref{ProtoMeta}()
function meta(::Type{TopicRule})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopicRule)
            __meta_TopicRule[] = target = ProtoMeta(TopicRule)
            allflds = Pair{Symbol,Union{Type,String}}[:match => AbstractString, :path => AbstractString]
            meta(target, TopicRule, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopicRule[]
    end
end
function Base.getproperty(obj::TopicRule, name::Symbol)
    if name === :match
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :path
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct TopicRoutes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopicRoutes(; kwargs...)
        obj = new(meta(TopicRoutes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopicRoutes
const __meta_TopicRoutes = Ref{ProtoMeta}()
function meta(::Type{TopicRoutes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopicRoutes)
            __meta_TopicRoutes[] = target = ProtoMeta(TopicRoutes)
            allflds = Pair{Symbol,Union{Type,String}}[:rules => Base.Vector{TopicRule}, :default => AbstractString]
            meta(target, TopicRoutes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopicRoutes[]
    end
end
function Base.getproperty(obj::TopicRoutes, name::Symbol)
    if name === :rules
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TopicRule}
    elseif name === :default
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct TopicSubscription_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopicSubscription_MetadataEntry(; kwargs...)
        obj = new(meta(TopicSubscription_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopicSubscription_MetadataEntry (mapentry)
const __meta_TopicSubscription_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{TopicSubscription_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopicSubscription_MetadataEntry)
            __meta_TopicSubscription_MetadataEntry[] = target = ProtoMeta(TopicSubscription_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, TopicSubscription_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopicSubscription_MetadataEntry[]
    end
end
function Base.getproperty(obj::TopicSubscription_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct TopicSubscription <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopicSubscription(; kwargs...)
        obj = new(meta(TopicSubscription), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopicSubscription
const __meta_TopicSubscription = Ref{ProtoMeta}()
function meta(::Type{TopicSubscription})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopicSubscription)
            __meta_TopicSubscription[] = target = ProtoMeta(TopicSubscription)
            fnum = Int[1,2,3,5]
            allflds = Pair{Symbol,Union{Type,String}}[:pubsub_name => AbstractString, :topic => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}, :routes => TopicRoutes]
            meta(target, TopicSubscription, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopicSubscription[]
    end
end
function Base.getproperty(obj::TopicSubscription, name::Symbol)
    if name === :pubsub_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :topic
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    elseif name === :routes
        return (obj.__protobuf_jl_internal_values[name])::TopicRoutes
    else
        getfield(obj, name)
    end
end

mutable struct ListTopicSubscriptionsResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListTopicSubscriptionsResponse(; kwargs...)
        obj = new(meta(ListTopicSubscriptionsResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListTopicSubscriptionsResponse
const __meta_ListTopicSubscriptionsResponse = Ref{ProtoMeta}()
function meta(::Type{ListTopicSubscriptionsResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListTopicSubscriptionsResponse)
            __meta_ListTopicSubscriptionsResponse[] = target = ProtoMeta(ListTopicSubscriptionsResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:subscriptions => Base.Vector{TopicSubscription}]
            meta(target, ListTopicSubscriptionsResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListTopicSubscriptionsResponse[]
    end
end
function Base.getproperty(obj::ListTopicSubscriptionsResponse, name::Symbol)
    if name === :subscriptions
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TopicSubscription}
    else
        getfield(obj, name)
    end
end

mutable struct ListInputBindingsResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListInputBindingsResponse(; kwargs...)
        obj = new(meta(ListInputBindingsResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListInputBindingsResponse
const __meta_ListInputBindingsResponse = Ref{ProtoMeta}()
function meta(::Type{ListInputBindingsResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListInputBindingsResponse)
            __meta_ListInputBindingsResponse[] = target = ProtoMeta(ListInputBindingsResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:bindings => Base.Vector{AbstractString}]
            meta(target, ListInputBindingsResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListInputBindingsResponse[]
    end
end
function Base.getproperty(obj::ListInputBindingsResponse, name::Symbol)
    if name === :bindings
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

# service methods for AppCallback
const _AppCallback_methods = MethodDescriptor[
        MethodDescriptor("OnInvoke", 1, dapr.proto.common.v1.InvokeRequest, dapr.proto.common.v1.InvokeResponse),
        MethodDescriptor("ListTopicSubscriptions", 2, ProtoBuf.google.protobuf.Empty, ListTopicSubscriptionsResponse),
        MethodDescriptor("OnTopicEvent", 3, TopicEventRequest, TopicEventResponse),
        MethodDescriptor("ListInputBindings", 4, ProtoBuf.google.protobuf.Empty, ListInputBindingsResponse),
        MethodDescriptor("OnBindingEvent", 5, BindingEventRequest, BindingEventResponse)
    ] # const _AppCallback_methods
const _AppCallback_desc = ServiceDescriptor("dapr.proto.runtime.v1.AppCallback", 1, _AppCallback_methods)

AppCallback(impl::Module) = ProtoService(_AppCallback_desc, impl)

mutable struct AppCallbackStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    AppCallbackStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_AppCallback_desc, channel))
end # mutable struct AppCallbackStub

mutable struct AppCallbackBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    AppCallbackBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_AppCallback_desc, channel))
end # mutable struct AppCallbackBlockingStub

OnInvoke(stub::AppCallbackStub, controller::ProtoRpcController, inp::dapr.proto.common.v1.InvokeRequest, done::Function) = call_method(stub.impl, _AppCallback_methods[1], controller, inp, done)
OnInvoke(stub::AppCallbackBlockingStub, controller::ProtoRpcController, inp::dapr.proto.common.v1.InvokeRequest) = call_method(stub.impl, _AppCallback_methods[1], controller, inp)

ListTopicSubscriptions(stub::AppCallbackStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty, done::Function) = call_method(stub.impl, _AppCallback_methods[2], controller, inp, done)
ListTopicSubscriptions(stub::AppCallbackBlockingStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty) = call_method(stub.impl, _AppCallback_methods[2], controller, inp)

OnTopicEvent(stub::AppCallbackStub, controller::ProtoRpcController, inp::TopicEventRequest, done::Function) = call_method(stub.impl, _AppCallback_methods[3], controller, inp, done)
OnTopicEvent(stub::AppCallbackBlockingStub, controller::ProtoRpcController, inp::TopicEventRequest) = call_method(stub.impl, _AppCallback_methods[3], controller, inp)

ListInputBindings(stub::AppCallbackStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty, done::Function) = call_method(stub.impl, _AppCallback_methods[4], controller, inp, done)
ListInputBindings(stub::AppCallbackBlockingStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty) = call_method(stub.impl, _AppCallback_methods[4], controller, inp)

OnBindingEvent(stub::AppCallbackStub, controller::ProtoRpcController, inp::BindingEventRequest, done::Function) = call_method(stub.impl, _AppCallback_methods[5], controller, inp, done)
OnBindingEvent(stub::AppCallbackBlockingStub, controller::ProtoRpcController, inp::BindingEventRequest) = call_method(stub.impl, _AppCallback_methods[5], controller, inp)

export TopicEventRequest, TopicEventResponse_TopicEventResponseStatus, TopicEventResponse, BindingEventRequest_MetadataEntry, BindingEventRequest, BindingEventResponse_BindingEventConcurrency, BindingEventResponse, ListTopicSubscriptionsResponse, TopicSubscription_MetadataEntry, TopicSubscription, TopicRoutes, TopicRule, ListInputBindingsResponse, AppCallback, AppCallbackStub, AppCallbackBlockingStub, OnInvoke, ListTopicSubscriptions, OnTopicEvent, ListInputBindings, OnBindingEvent
# mapentries: "BindingEventRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "TopicSubscription_MetadataEntry" => ("AbstractString", "AbstractString")
