# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Host <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Host(; kwargs...)
        obj = new(meta(Host), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Host
const __meta_Host = Ref{ProtoMeta}()
function meta(::Type{Host})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Host)
            __meta_Host[] = target = ProtoMeta(Host)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :port => Int64, :load => Int64, :entities => Base.Vector{AbstractString}, :id => AbstractString]
            meta(target, Host, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Host[]
    end
end
function Base.getproperty(obj::Host, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :port
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :load
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :entities
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct PlacementTable_LoadMapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlacementTable_LoadMapEntry(; kwargs...)
        obj = new(meta(PlacementTable_LoadMapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlacementTable_LoadMapEntry (mapentry)
const __meta_PlacementTable_LoadMapEntry = Ref{ProtoMeta}()
function meta(::Type{PlacementTable_LoadMapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlacementTable_LoadMapEntry)
            __meta_PlacementTable_LoadMapEntry[] = target = ProtoMeta(PlacementTable_LoadMapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Host]
            meta(target, PlacementTable_LoadMapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlacementTable_LoadMapEntry[]
    end
end
function Base.getproperty(obj::PlacementTable_LoadMapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Host
    else
        getfield(obj, name)
    end
end

mutable struct PlacementTable_HostsEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlacementTable_HostsEntry(; kwargs...)
        obj = new(meta(PlacementTable_HostsEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlacementTable_HostsEntry (mapentry)
const __meta_PlacementTable_HostsEntry = Ref{ProtoMeta}()
function meta(::Type{PlacementTable_HostsEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlacementTable_HostsEntry)
            __meta_PlacementTable_HostsEntry[] = target = ProtoMeta(PlacementTable_HostsEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => UInt64, :value => AbstractString]
            meta(target, PlacementTable_HostsEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlacementTable_HostsEntry[]
    end
end
function Base.getproperty(obj::PlacementTable_HostsEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct PlacementTable <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlacementTable(; kwargs...)
        obj = new(meta(PlacementTable), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlacementTable
const __meta_PlacementTable = Ref{ProtoMeta}()
function meta(::Type{PlacementTable})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlacementTable)
            __meta_PlacementTable[] = target = ProtoMeta(PlacementTable)
            pack = Symbol[:sorted_set]
            allflds = Pair{Symbol,Union{Type,String}}[:hosts => Base.Dict{UInt64,AbstractString}, :sorted_set => Base.Vector{UInt64}, :load_map => Base.Dict{AbstractString,Host}, :total_load => Int64]
            meta(target, PlacementTable, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlacementTable[]
    end
end
function Base.getproperty(obj::PlacementTable, name::Symbol)
    if name === :hosts
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{UInt64,AbstractString}
    elseif name === :sorted_set
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :load_map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Host}
    elseif name === :total_load
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct PlacementTables_EntriesEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlacementTables_EntriesEntry(; kwargs...)
        obj = new(meta(PlacementTables_EntriesEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlacementTables_EntriesEntry (mapentry)
const __meta_PlacementTables_EntriesEntry = Ref{ProtoMeta}()
function meta(::Type{PlacementTables_EntriesEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlacementTables_EntriesEntry)
            __meta_PlacementTables_EntriesEntry[] = target = ProtoMeta(PlacementTables_EntriesEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => PlacementTable]
            meta(target, PlacementTables_EntriesEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlacementTables_EntriesEntry[]
    end
end
function Base.getproperty(obj::PlacementTables_EntriesEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::PlacementTable
    else
        getfield(obj, name)
    end
end

mutable struct PlacementTables <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlacementTables(; kwargs...)
        obj = new(meta(PlacementTables), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlacementTables
const __meta_PlacementTables = Ref{ProtoMeta}()
function meta(::Type{PlacementTables})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlacementTables)
            __meta_PlacementTables[] = target = ProtoMeta(PlacementTables)
            allflds = Pair{Symbol,Union{Type,String}}[:entries => Base.Dict{AbstractString,PlacementTable}, :version => AbstractString]
            meta(target, PlacementTables, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlacementTables[]
    end
end
function Base.getproperty(obj::PlacementTables, name::Symbol)
    if name === :entries
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,PlacementTable}
    elseif name === :version
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct PlacementOrder <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlacementOrder(; kwargs...)
        obj = new(meta(PlacementOrder), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PlacementOrder
const __meta_PlacementOrder = Ref{ProtoMeta}()
function meta(::Type{PlacementOrder})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlacementOrder)
            __meta_PlacementOrder[] = target = ProtoMeta(PlacementOrder)
            allflds = Pair{Symbol,Union{Type,String}}[:tables => PlacementTables, :operation => AbstractString]
            meta(target, PlacementOrder, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlacementOrder[]
    end
end
function Base.getproperty(obj::PlacementOrder, name::Symbol)
    if name === :tables
        return (obj.__protobuf_jl_internal_values[name])::PlacementTables
    elseif name === :operation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

# service methods for Placement
const _Placement_methods = MethodDescriptor[
        MethodDescriptor("ReportDaprStatus", 1, Channel{Host}, Channel{PlacementOrder})
    ] # const _Placement_methods
const _Placement_desc = ServiceDescriptor("dapr.proto.placement.v1.Placement", 1, _Placement_methods)

Placement(impl::Module) = ProtoService(_Placement_desc, impl)

mutable struct PlacementStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    PlacementStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Placement_desc, channel))
end # mutable struct PlacementStub

mutable struct PlacementBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    PlacementBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Placement_desc, channel))
end # mutable struct PlacementBlockingStub

ReportDaprStatus(stub::PlacementStub, controller::ProtoRpcController, inp::Channel{Host}, done::Function) = call_method(stub.impl, _Placement_methods[1], controller, inp, done)
ReportDaprStatus(stub::PlacementBlockingStub, controller::ProtoRpcController, inp::Channel{Host}) = call_method(stub.impl, _Placement_methods[1], controller, inp)

export PlacementOrder, PlacementTables_EntriesEntry, PlacementTables, PlacementTable_HostsEntry, PlacementTable_LoadMapEntry, PlacementTable, Host, Placement, PlacementStub, PlacementBlockingStub, ReportDaprStatus
# mapentries: "PlacementTable_HostsEntry" => ("UInt64", "AbstractString"), "PlacementTables_EntriesEntry" => ("AbstractString", "PlacementTable"), "PlacementTable_LoadMapEntry" => ("AbstractString", "Host")
