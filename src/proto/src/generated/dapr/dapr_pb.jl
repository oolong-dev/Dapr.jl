# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf
import ._ProtoBuf_Top_.dapr

mutable struct InvokeServiceRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeServiceRequest(; kwargs...)
        obj = new(meta(InvokeServiceRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeServiceRequest
const __meta_InvokeServiceRequest = Ref{ProtoMeta}()
function meta(::Type{InvokeServiceRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeServiceRequest)
            __meta_InvokeServiceRequest[] = target = ProtoMeta(InvokeServiceRequest)
            fnum = Int[1,3]
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :message => dapr.proto.common.v1.InvokeRequest]
            meta(target, InvokeServiceRequest, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeServiceRequest[]
    end
end
function Base.getproperty(obj::InvokeServiceRequest, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :message
        return (obj.__protobuf_jl_internal_values[name])::dapr.proto.common.v1.InvokeRequest
    else
        getfield(obj, name)
    end
end

mutable struct GetStateRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetStateRequest_MetadataEntry(; kwargs...)
        obj = new(meta(GetStateRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetStateRequest_MetadataEntry (mapentry)
const __meta_GetStateRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetStateRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetStateRequest_MetadataEntry)
            __meta_GetStateRequest_MetadataEntry[] = target = ProtoMeta(GetStateRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetStateRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetStateRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::GetStateRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetStateRequest(; kwargs...)
        obj = new(meta(GetStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetStateRequest
const __meta_GetStateRequest = Ref{ProtoMeta}()
function meta(::Type{GetStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetStateRequest)
            __meta_GetStateRequest[] = target = ProtoMeta(GetStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :key => AbstractString, :consistency => Int32, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetStateRequest[]
    end
end
function Base.getproperty(obj::GetStateRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :consistency
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkStateRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkStateRequest_MetadataEntry(; kwargs...)
        obj = new(meta(GetBulkStateRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkStateRequest_MetadataEntry (mapentry)
const __meta_GetBulkStateRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetBulkStateRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkStateRequest_MetadataEntry)
            __meta_GetBulkStateRequest_MetadataEntry[] = target = ProtoMeta(GetBulkStateRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetBulkStateRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkStateRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::GetBulkStateRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkStateRequest(; kwargs...)
        obj = new(meta(GetBulkStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkStateRequest
const __meta_GetBulkStateRequest = Ref{ProtoMeta}()
function meta(::Type{GetBulkStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkStateRequest)
            __meta_GetBulkStateRequest[] = target = ProtoMeta(GetBulkStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :keys => Base.Vector{AbstractString}, :parallelism => Int32, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetBulkStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkStateRequest[]
    end
end
function Base.getproperty(obj::GetBulkStateRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :parallelism
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct BulkStateItem_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BulkStateItem_MetadataEntry(; kwargs...)
        obj = new(meta(BulkStateItem_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BulkStateItem_MetadataEntry (mapentry)
const __meta_BulkStateItem_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{BulkStateItem_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BulkStateItem_MetadataEntry)
            __meta_BulkStateItem_MetadataEntry[] = target = ProtoMeta(BulkStateItem_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, BulkStateItem_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BulkStateItem_MetadataEntry[]
    end
end
function Base.getproperty(obj::BulkStateItem_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct BulkStateItem <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BulkStateItem(; kwargs...)
        obj = new(meta(BulkStateItem), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BulkStateItem
const __meta_BulkStateItem = Ref{ProtoMeta}()
function meta(::Type{BulkStateItem})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BulkStateItem)
            __meta_BulkStateItem[] = target = ProtoMeta(BulkStateItem)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :data => Vector{UInt8}, :etag => AbstractString, :error => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, BulkStateItem, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BulkStateItem[]
    end
end
function Base.getproperty(obj::BulkStateItem, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :etag
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :error
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkStateResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkStateResponse(; kwargs...)
        obj = new(meta(GetBulkStateResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkStateResponse
const __meta_GetBulkStateResponse = Ref{ProtoMeta}()
function meta(::Type{GetBulkStateResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkStateResponse)
            __meta_GetBulkStateResponse[] = target = ProtoMeta(GetBulkStateResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:items => Base.Vector{BulkStateItem}]
            meta(target, GetBulkStateResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkStateResponse[]
    end
end
function Base.getproperty(obj::GetBulkStateResponse, name::Symbol)
    if name === :items
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{BulkStateItem}
    else
        getfield(obj, name)
    end
end

mutable struct GetStateResponse_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetStateResponse_MetadataEntry(; kwargs...)
        obj = new(meta(GetStateResponse_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetStateResponse_MetadataEntry (mapentry)
const __meta_GetStateResponse_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetStateResponse_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetStateResponse_MetadataEntry)
            __meta_GetStateResponse_MetadataEntry[] = target = ProtoMeta(GetStateResponse_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetStateResponse_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetStateResponse_MetadataEntry[]
    end
end
function Base.getproperty(obj::GetStateResponse_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetStateResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetStateResponse(; kwargs...)
        obj = new(meta(GetStateResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetStateResponse
const __meta_GetStateResponse = Ref{ProtoMeta}()
function meta(::Type{GetStateResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetStateResponse)
            __meta_GetStateResponse[] = target = ProtoMeta(GetStateResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => Vector{UInt8}, :etag => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetStateResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetStateResponse[]
    end
end
function Base.getproperty(obj::GetStateResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :etag
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct DeleteStateRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteStateRequest_MetadataEntry(; kwargs...)
        obj = new(meta(DeleteStateRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeleteStateRequest_MetadataEntry (mapentry)
const __meta_DeleteStateRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{DeleteStateRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteStateRequest_MetadataEntry)
            __meta_DeleteStateRequest_MetadataEntry[] = target = ProtoMeta(DeleteStateRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, DeleteStateRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteStateRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::DeleteStateRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct DeleteStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteStateRequest(; kwargs...)
        obj = new(meta(DeleteStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeleteStateRequest
const __meta_DeleteStateRequest = Ref{ProtoMeta}()
function meta(::Type{DeleteStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteStateRequest)
            __meta_DeleteStateRequest[] = target = ProtoMeta(DeleteStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :key => AbstractString, :etag => dapr.proto.common.v1.Etag, :options => dapr.proto.common.v1.StateOptions, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, DeleteStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteStateRequest[]
    end
end
function Base.getproperty(obj::DeleteStateRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :etag
        return (obj.__protobuf_jl_internal_values[name])::dapr.proto.common.v1.Etag
    elseif name === :options
        return (obj.__protobuf_jl_internal_values[name])::dapr.proto.common.v1.StateOptions
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct DeleteBulkStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DeleteBulkStateRequest(; kwargs...)
        obj = new(meta(DeleteBulkStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DeleteBulkStateRequest
const __meta_DeleteBulkStateRequest = Ref{ProtoMeta}()
function meta(::Type{DeleteBulkStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DeleteBulkStateRequest)
            __meta_DeleteBulkStateRequest[] = target = ProtoMeta(DeleteBulkStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :states => Base.Vector{dapr.proto.common.v1.StateItem}]
            meta(target, DeleteBulkStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DeleteBulkStateRequest[]
    end
end
function Base.getproperty(obj::DeleteBulkStateRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{dapr.proto.common.v1.StateItem}
    else
        getfield(obj, name)
    end
end

mutable struct SaveStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SaveStateRequest(; kwargs...)
        obj = new(meta(SaveStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SaveStateRequest
const __meta_SaveStateRequest = Ref{ProtoMeta}()
function meta(::Type{SaveStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SaveStateRequest)
            __meta_SaveStateRequest[] = target = ProtoMeta(SaveStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :states => Base.Vector{dapr.proto.common.v1.StateItem}]
            meta(target, SaveStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SaveStateRequest[]
    end
end
function Base.getproperty(obj::SaveStateRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{dapr.proto.common.v1.StateItem}
    else
        getfield(obj, name)
    end
end

mutable struct QueryStateRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function QueryStateRequest_MetadataEntry(; kwargs...)
        obj = new(meta(QueryStateRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct QueryStateRequest_MetadataEntry (mapentry)
const __meta_QueryStateRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{QueryStateRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_QueryStateRequest_MetadataEntry)
            __meta_QueryStateRequest_MetadataEntry[] = target = ProtoMeta(QueryStateRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, QueryStateRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_QueryStateRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::QueryStateRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct QueryStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function QueryStateRequest(; kwargs...)
        obj = new(meta(QueryStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct QueryStateRequest
const __meta_QueryStateRequest = Ref{ProtoMeta}()
function meta(::Type{QueryStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_QueryStateRequest)
            __meta_QueryStateRequest[] = target = ProtoMeta(QueryStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :query => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, QueryStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_QueryStateRequest[]
    end
end
function Base.getproperty(obj::QueryStateRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :query
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct QueryStateItem <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function QueryStateItem(; kwargs...)
        obj = new(meta(QueryStateItem), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct QueryStateItem
const __meta_QueryStateItem = Ref{ProtoMeta}()
function meta(::Type{QueryStateItem})
    ProtoBuf.metalock() do
        if !isassigned(__meta_QueryStateItem)
            __meta_QueryStateItem[] = target = ProtoMeta(QueryStateItem)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :data => Vector{UInt8}, :etag => AbstractString, :error => AbstractString]
            meta(target, QueryStateItem, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_QueryStateItem[]
    end
end
function Base.getproperty(obj::QueryStateItem, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :etag
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :error
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct QueryStateResponse_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function QueryStateResponse_MetadataEntry(; kwargs...)
        obj = new(meta(QueryStateResponse_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct QueryStateResponse_MetadataEntry (mapentry)
const __meta_QueryStateResponse_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{QueryStateResponse_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_QueryStateResponse_MetadataEntry)
            __meta_QueryStateResponse_MetadataEntry[] = target = ProtoMeta(QueryStateResponse_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, QueryStateResponse_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_QueryStateResponse_MetadataEntry[]
    end
end
function Base.getproperty(obj::QueryStateResponse_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct QueryStateResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function QueryStateResponse(; kwargs...)
        obj = new(meta(QueryStateResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct QueryStateResponse
const __meta_QueryStateResponse = Ref{ProtoMeta}()
function meta(::Type{QueryStateResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_QueryStateResponse)
            __meta_QueryStateResponse[] = target = ProtoMeta(QueryStateResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:results => Base.Vector{QueryStateItem}, :token => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, QueryStateResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_QueryStateResponse[]
    end
end
function Base.getproperty(obj::QueryStateResponse, name::Symbol)
    if name === :results
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{QueryStateItem}
    elseif name === :token
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct PublishEventRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PublishEventRequest_MetadataEntry(; kwargs...)
        obj = new(meta(PublishEventRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PublishEventRequest_MetadataEntry (mapentry)
const __meta_PublishEventRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{PublishEventRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PublishEventRequest_MetadataEntry)
            __meta_PublishEventRequest_MetadataEntry[] = target = ProtoMeta(PublishEventRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, PublishEventRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PublishEventRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::PublishEventRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct PublishEventRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PublishEventRequest(; kwargs...)
        obj = new(meta(PublishEventRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PublishEventRequest
const __meta_PublishEventRequest = Ref{ProtoMeta}()
function meta(::Type{PublishEventRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PublishEventRequest)
            __meta_PublishEventRequest[] = target = ProtoMeta(PublishEventRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:pubsub_name => AbstractString, :topic => AbstractString, :data => Vector{UInt8}, :data_content_type => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, PublishEventRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PublishEventRequest[]
    end
end
function Base.getproperty(obj::PublishEventRequest, name::Symbol)
    if name === :pubsub_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :topic
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :data_content_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct InvokeBindingRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeBindingRequest_MetadataEntry(; kwargs...)
        obj = new(meta(InvokeBindingRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeBindingRequest_MetadataEntry (mapentry)
const __meta_InvokeBindingRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{InvokeBindingRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeBindingRequest_MetadataEntry)
            __meta_InvokeBindingRequest_MetadataEntry[] = target = ProtoMeta(InvokeBindingRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, InvokeBindingRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeBindingRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::InvokeBindingRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct InvokeBindingRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeBindingRequest(; kwargs...)
        obj = new(meta(InvokeBindingRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeBindingRequest
const __meta_InvokeBindingRequest = Ref{ProtoMeta}()
function meta(::Type{InvokeBindingRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeBindingRequest)
            __meta_InvokeBindingRequest[] = target = ProtoMeta(InvokeBindingRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :data => Vector{UInt8}, :metadata => Base.Dict{AbstractString,AbstractString}, :operation => AbstractString]
            meta(target, InvokeBindingRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeBindingRequest[]
    end
end
function Base.getproperty(obj::InvokeBindingRequest, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    elseif name === :operation
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct InvokeBindingResponse_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeBindingResponse_MetadataEntry(; kwargs...)
        obj = new(meta(InvokeBindingResponse_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeBindingResponse_MetadataEntry (mapentry)
const __meta_InvokeBindingResponse_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{InvokeBindingResponse_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeBindingResponse_MetadataEntry)
            __meta_InvokeBindingResponse_MetadataEntry[] = target = ProtoMeta(InvokeBindingResponse_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, InvokeBindingResponse_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeBindingResponse_MetadataEntry[]
    end
end
function Base.getproperty(obj::InvokeBindingResponse_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct InvokeBindingResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeBindingResponse(; kwargs...)
        obj = new(meta(InvokeBindingResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeBindingResponse
const __meta_InvokeBindingResponse = Ref{ProtoMeta}()
function meta(::Type{InvokeBindingResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeBindingResponse)
            __meta_InvokeBindingResponse[] = target = ProtoMeta(InvokeBindingResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => Vector{UInt8}, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, InvokeBindingResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeBindingResponse[]
    end
end
function Base.getproperty(obj::InvokeBindingResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GetSecretRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetSecretRequest_MetadataEntry(; kwargs...)
        obj = new(meta(GetSecretRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetSecretRequest_MetadataEntry (mapentry)
const __meta_GetSecretRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetSecretRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetSecretRequest_MetadataEntry)
            __meta_GetSecretRequest_MetadataEntry[] = target = ProtoMeta(GetSecretRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetSecretRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetSecretRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::GetSecretRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetSecretRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetSecretRequest(; kwargs...)
        obj = new(meta(GetSecretRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetSecretRequest
const __meta_GetSecretRequest = Ref{ProtoMeta}()
function meta(::Type{GetSecretRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetSecretRequest)
            __meta_GetSecretRequest[] = target = ProtoMeta(GetSecretRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :key => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetSecretRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetSecretRequest[]
    end
end
function Base.getproperty(obj::GetSecretRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GetSecretResponse_DataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetSecretResponse_DataEntry(; kwargs...)
        obj = new(meta(GetSecretResponse_DataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetSecretResponse_DataEntry (mapentry)
const __meta_GetSecretResponse_DataEntry = Ref{ProtoMeta}()
function meta(::Type{GetSecretResponse_DataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetSecretResponse_DataEntry)
            __meta_GetSecretResponse_DataEntry[] = target = ProtoMeta(GetSecretResponse_DataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetSecretResponse_DataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetSecretResponse_DataEntry[]
    end
end
function Base.getproperty(obj::GetSecretResponse_DataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetSecretResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetSecretResponse(; kwargs...)
        obj = new(meta(GetSecretResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetSecretResponse
const __meta_GetSecretResponse = Ref{ProtoMeta}()
function meta(::Type{GetSecretResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetSecretResponse)
            __meta_GetSecretResponse[] = target = ProtoMeta(GetSecretResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetSecretResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetSecretResponse[]
    end
end
function Base.getproperty(obj::GetSecretResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkSecretRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkSecretRequest_MetadataEntry(; kwargs...)
        obj = new(meta(GetBulkSecretRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkSecretRequest_MetadataEntry (mapentry)
const __meta_GetBulkSecretRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetBulkSecretRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkSecretRequest_MetadataEntry)
            __meta_GetBulkSecretRequest_MetadataEntry[] = target = ProtoMeta(GetBulkSecretRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetBulkSecretRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkSecretRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::GetBulkSecretRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkSecretRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkSecretRequest(; kwargs...)
        obj = new(meta(GetBulkSecretRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkSecretRequest
const __meta_GetBulkSecretRequest = Ref{ProtoMeta}()
function meta(::Type{GetBulkSecretRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkSecretRequest)
            __meta_GetBulkSecretRequest[] = target = ProtoMeta(GetBulkSecretRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetBulkSecretRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkSecretRequest[]
    end
end
function Base.getproperty(obj::GetBulkSecretRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct SecretResponse_SecretsEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SecretResponse_SecretsEntry(; kwargs...)
        obj = new(meta(SecretResponse_SecretsEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SecretResponse_SecretsEntry (mapentry)
const __meta_SecretResponse_SecretsEntry = Ref{ProtoMeta}()
function meta(::Type{SecretResponse_SecretsEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SecretResponse_SecretsEntry)
            __meta_SecretResponse_SecretsEntry[] = target = ProtoMeta(SecretResponse_SecretsEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, SecretResponse_SecretsEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SecretResponse_SecretsEntry[]
    end
end
function Base.getproperty(obj::SecretResponse_SecretsEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct SecretResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SecretResponse(; kwargs...)
        obj = new(meta(SecretResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SecretResponse
const __meta_SecretResponse = Ref{ProtoMeta}()
function meta(::Type{SecretResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SecretResponse)
            __meta_SecretResponse[] = target = ProtoMeta(SecretResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:secrets => Base.Dict{AbstractString,AbstractString}]
            meta(target, SecretResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SecretResponse[]
    end
end
function Base.getproperty(obj::SecretResponse, name::Symbol)
    if name === :secrets
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkSecretResponse_DataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkSecretResponse_DataEntry(; kwargs...)
        obj = new(meta(GetBulkSecretResponse_DataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkSecretResponse_DataEntry (mapentry)
const __meta_GetBulkSecretResponse_DataEntry = Ref{ProtoMeta}()
function meta(::Type{GetBulkSecretResponse_DataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkSecretResponse_DataEntry)
            __meta_GetBulkSecretResponse_DataEntry[] = target = ProtoMeta(GetBulkSecretResponse_DataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => SecretResponse]
            meta(target, GetBulkSecretResponse_DataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkSecretResponse_DataEntry[]
    end
end
function Base.getproperty(obj::GetBulkSecretResponse_DataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::SecretResponse
    else
        getfield(obj, name)
    end
end

mutable struct GetBulkSecretResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetBulkSecretResponse(; kwargs...)
        obj = new(meta(GetBulkSecretResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetBulkSecretResponse
const __meta_GetBulkSecretResponse = Ref{ProtoMeta}()
function meta(::Type{GetBulkSecretResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetBulkSecretResponse)
            __meta_GetBulkSecretResponse[] = target = ProtoMeta(GetBulkSecretResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => Base.Dict{AbstractString,SecretResponse}]
            meta(target, GetBulkSecretResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetBulkSecretResponse[]
    end
end
function Base.getproperty(obj::GetBulkSecretResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,SecretResponse}
    else
        getfield(obj, name)
    end
end

mutable struct TransactionalStateOperation <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TransactionalStateOperation(; kwargs...)
        obj = new(meta(TransactionalStateOperation), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TransactionalStateOperation
const __meta_TransactionalStateOperation = Ref{ProtoMeta}()
function meta(::Type{TransactionalStateOperation})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TransactionalStateOperation)
            __meta_TransactionalStateOperation[] = target = ProtoMeta(TransactionalStateOperation)
            allflds = Pair{Symbol,Union{Type,String}}[:operationType => AbstractString, :request => dapr.proto.common.v1.StateItem]
            meta(target, TransactionalStateOperation, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TransactionalStateOperation[]
    end
end
function Base.getproperty(obj::TransactionalStateOperation, name::Symbol)
    if name === :operationType
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :request
        return (obj.__protobuf_jl_internal_values[name])::dapr.proto.common.v1.StateItem
    else
        getfield(obj, name)
    end
end

mutable struct ExecuteStateTransactionRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ExecuteStateTransactionRequest_MetadataEntry(; kwargs...)
        obj = new(meta(ExecuteStateTransactionRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ExecuteStateTransactionRequest_MetadataEntry (mapentry)
const __meta_ExecuteStateTransactionRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{ExecuteStateTransactionRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ExecuteStateTransactionRequest_MetadataEntry)
            __meta_ExecuteStateTransactionRequest_MetadataEntry[] = target = ProtoMeta(ExecuteStateTransactionRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, ExecuteStateTransactionRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ExecuteStateTransactionRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::ExecuteStateTransactionRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct ExecuteStateTransactionRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ExecuteStateTransactionRequest(; kwargs...)
        obj = new(meta(ExecuteStateTransactionRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ExecuteStateTransactionRequest
const __meta_ExecuteStateTransactionRequest = Ref{ProtoMeta}()
function meta(::Type{ExecuteStateTransactionRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ExecuteStateTransactionRequest)
            __meta_ExecuteStateTransactionRequest[] = target = ProtoMeta(ExecuteStateTransactionRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:storeName => AbstractString, :operations => Base.Vector{TransactionalStateOperation}, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, ExecuteStateTransactionRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ExecuteStateTransactionRequest[]
    end
end
function Base.getproperty(obj::ExecuteStateTransactionRequest, name::Symbol)
    if name === :storeName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :operations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TransactionalStateOperation}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct RegisterActorTimerRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RegisterActorTimerRequest(; kwargs...)
        obj = new(meta(RegisterActorTimerRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RegisterActorTimerRequest
const __meta_RegisterActorTimerRequest = Ref{ProtoMeta}()
function meta(::Type{RegisterActorTimerRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RegisterActorTimerRequest)
            __meta_RegisterActorTimerRequest[] = target = ProtoMeta(RegisterActorTimerRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :name => AbstractString, :due_time => AbstractString, :period => AbstractString, :callback => AbstractString, :data => Vector{UInt8}, :ttl => AbstractString]
            meta(target, RegisterActorTimerRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RegisterActorTimerRequest[]
    end
end
function Base.getproperty(obj::RegisterActorTimerRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :due_time
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :callback
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :ttl
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct UnregisterActorTimerRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UnregisterActorTimerRequest(; kwargs...)
        obj = new(meta(UnregisterActorTimerRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UnregisterActorTimerRequest
const __meta_UnregisterActorTimerRequest = Ref{ProtoMeta}()
function meta(::Type{UnregisterActorTimerRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UnregisterActorTimerRequest)
            __meta_UnregisterActorTimerRequest[] = target = ProtoMeta(UnregisterActorTimerRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :name => AbstractString]
            meta(target, UnregisterActorTimerRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UnregisterActorTimerRequest[]
    end
end
function Base.getproperty(obj::UnregisterActorTimerRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct RegisterActorReminderRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RegisterActorReminderRequest(; kwargs...)
        obj = new(meta(RegisterActorReminderRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RegisterActorReminderRequest
const __meta_RegisterActorReminderRequest = Ref{ProtoMeta}()
function meta(::Type{RegisterActorReminderRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RegisterActorReminderRequest)
            __meta_RegisterActorReminderRequest[] = target = ProtoMeta(RegisterActorReminderRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :name => AbstractString, :due_time => AbstractString, :period => AbstractString, :data => Vector{UInt8}, :ttl => AbstractString]
            meta(target, RegisterActorReminderRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RegisterActorReminderRequest[]
    end
end
function Base.getproperty(obj::RegisterActorReminderRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :due_time
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :period
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :ttl
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct UnregisterActorReminderRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UnregisterActorReminderRequest(; kwargs...)
        obj = new(meta(UnregisterActorReminderRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UnregisterActorReminderRequest
const __meta_UnregisterActorReminderRequest = Ref{ProtoMeta}()
function meta(::Type{UnregisterActorReminderRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UnregisterActorReminderRequest)
            __meta_UnregisterActorReminderRequest[] = target = ProtoMeta(UnregisterActorReminderRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :name => AbstractString]
            meta(target, UnregisterActorReminderRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UnregisterActorReminderRequest[]
    end
end
function Base.getproperty(obj::UnregisterActorReminderRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetActorStateRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetActorStateRequest(; kwargs...)
        obj = new(meta(GetActorStateRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetActorStateRequest
const __meta_GetActorStateRequest = Ref{ProtoMeta}()
function meta(::Type{GetActorStateRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetActorStateRequest)
            __meta_GetActorStateRequest[] = target = ProtoMeta(GetActorStateRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :key => AbstractString]
            meta(target, GetActorStateRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetActorStateRequest[]
    end
end
function Base.getproperty(obj::GetActorStateRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetActorStateResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetActorStateResponse(; kwargs...)
        obj = new(meta(GetActorStateResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetActorStateResponse
const __meta_GetActorStateResponse = Ref{ProtoMeta}()
function meta(::Type{GetActorStateResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetActorStateResponse)
            __meta_GetActorStateResponse[] = target = ProtoMeta(GetActorStateResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => Vector{UInt8}]
            meta(target, GetActorStateResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetActorStateResponse[]
    end
end
function Base.getproperty(obj::GetActorStateResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct TransactionalActorStateOperation <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TransactionalActorStateOperation(; kwargs...)
        obj = new(meta(TransactionalActorStateOperation), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TransactionalActorStateOperation
const __meta_TransactionalActorStateOperation = Ref{ProtoMeta}()
function meta(::Type{TransactionalActorStateOperation})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TransactionalActorStateOperation)
            __meta_TransactionalActorStateOperation[] = target = ProtoMeta(TransactionalActorStateOperation)
            allflds = Pair{Symbol,Union{Type,String}}[:operationType => AbstractString, :key => AbstractString, :value => ProtoBuf.google.protobuf._Any]
            meta(target, TransactionalActorStateOperation, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TransactionalActorStateOperation[]
    end
end
function Base.getproperty(obj::TransactionalActorStateOperation, name::Symbol)
    if name === :operationType
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    else
        getfield(obj, name)
    end
end

mutable struct ExecuteActorStateTransactionRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ExecuteActorStateTransactionRequest(; kwargs...)
        obj = new(meta(ExecuteActorStateTransactionRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ExecuteActorStateTransactionRequest
const __meta_ExecuteActorStateTransactionRequest = Ref{ProtoMeta}()
function meta(::Type{ExecuteActorStateTransactionRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ExecuteActorStateTransactionRequest)
            __meta_ExecuteActorStateTransactionRequest[] = target = ProtoMeta(ExecuteActorStateTransactionRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :operations => Base.Vector{TransactionalActorStateOperation}]
            meta(target, ExecuteActorStateTransactionRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ExecuteActorStateTransactionRequest[]
    end
end
function Base.getproperty(obj::ExecuteActorStateTransactionRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :operations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TransactionalActorStateOperation}
    else
        getfield(obj, name)
    end
end

mutable struct InvokeActorRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeActorRequest(; kwargs...)
        obj = new(meta(InvokeActorRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeActorRequest
const __meta_InvokeActorRequest = Ref{ProtoMeta}()
function meta(::Type{InvokeActorRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeActorRequest)
            __meta_InvokeActorRequest[] = target = ProtoMeta(InvokeActorRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:actor_type => AbstractString, :actor_id => AbstractString, :method => AbstractString, :data => Vector{UInt8}]
            meta(target, InvokeActorRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeActorRequest[]
    end
end
function Base.getproperty(obj::InvokeActorRequest, name::Symbol)
    if name === :actor_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :actor_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :method
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct InvokeActorResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeActorResponse(; kwargs...)
        obj = new(meta(InvokeActorResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeActorResponse
const __meta_InvokeActorResponse = Ref{ProtoMeta}()
function meta(::Type{InvokeActorResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeActorResponse)
            __meta_InvokeActorResponse[] = target = ProtoMeta(InvokeActorResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => Vector{UInt8}]
            meta(target, InvokeActorResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeActorResponse[]
    end
end
function Base.getproperty(obj::InvokeActorResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct ActiveActorsCount <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActiveActorsCount(; kwargs...)
        obj = new(meta(ActiveActorsCount), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActiveActorsCount
const __meta_ActiveActorsCount = Ref{ProtoMeta}()
function meta(::Type{ActiveActorsCount})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActiveActorsCount)
            __meta_ActiveActorsCount[] = target = ProtoMeta(ActiveActorsCount)
            allflds = Pair{Symbol,Union{Type,String}}[:_type => AbstractString, :count => Int32]
            meta(target, ActiveActorsCount, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActiveActorsCount[]
    end
end
function Base.getproperty(obj::ActiveActorsCount, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :count
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct RegisteredComponents <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RegisteredComponents(; kwargs...)
        obj = new(meta(RegisteredComponents), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RegisteredComponents
const __meta_RegisteredComponents = Ref{ProtoMeta}()
function meta(::Type{RegisteredComponents})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RegisteredComponents)
            __meta_RegisteredComponents[] = target = ProtoMeta(RegisteredComponents)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :_type => AbstractString, :version => AbstractString]
            meta(target, RegisteredComponents, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RegisteredComponents[]
    end
end
function Base.getproperty(obj::RegisteredComponents, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :version
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetMetadataResponse_ExtendedMetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetMetadataResponse_ExtendedMetadataEntry(; kwargs...)
        obj = new(meta(GetMetadataResponse_ExtendedMetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetMetadataResponse_ExtendedMetadataEntry (mapentry)
const __meta_GetMetadataResponse_ExtendedMetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetMetadataResponse_ExtendedMetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetMetadataResponse_ExtendedMetadataEntry)
            __meta_GetMetadataResponse_ExtendedMetadataEntry[] = target = ProtoMeta(GetMetadataResponse_ExtendedMetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetMetadataResponse_ExtendedMetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetMetadataResponse_ExtendedMetadataEntry[]
    end
end
function Base.getproperty(obj::GetMetadataResponse_ExtendedMetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetMetadataResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetMetadataResponse(; kwargs...)
        obj = new(meta(GetMetadataResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetMetadataResponse
const __meta_GetMetadataResponse = Ref{ProtoMeta}()
function meta(::Type{GetMetadataResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetMetadataResponse)
            __meta_GetMetadataResponse[] = target = ProtoMeta(GetMetadataResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:id => AbstractString, :active_actors_count => Base.Vector{ActiveActorsCount}, :registered_components => Base.Vector{RegisteredComponents}, :extended_metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetMetadataResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetMetadataResponse[]
    end
end
function Base.getproperty(obj::GetMetadataResponse, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :active_actors_count
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ActiveActorsCount}
    elseif name === :registered_components
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{RegisteredComponents}
    elseif name === :extended_metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct SetMetadataRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SetMetadataRequest(; kwargs...)
        obj = new(meta(SetMetadataRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SetMetadataRequest
const __meta_SetMetadataRequest = Ref{ProtoMeta}()
function meta(::Type{SetMetadataRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SetMetadataRequest)
            __meta_SetMetadataRequest[] = target = ProtoMeta(SetMetadataRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, SetMetadataRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SetMetadataRequest[]
    end
end
function Base.getproperty(obj::SetMetadataRequest, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct GetConfigurationRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetConfigurationRequest_MetadataEntry(; kwargs...)
        obj = new(meta(GetConfigurationRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetConfigurationRequest_MetadataEntry (mapentry)
const __meta_GetConfigurationRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{GetConfigurationRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetConfigurationRequest_MetadataEntry)
            __meta_GetConfigurationRequest_MetadataEntry[] = target = ProtoMeta(GetConfigurationRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, GetConfigurationRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetConfigurationRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::GetConfigurationRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
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
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :keys => Base.Vector{AbstractString}, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, GetConfigurationRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetConfigurationRequest[]
    end
end
function Base.getproperty(obj::GetConfigurationRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
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
            allflds = Pair{Symbol,Union{Type,String}}[:items => Base.Vector{dapr.proto.common.v1.ConfigurationItem}]
            meta(target, GetConfigurationResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetConfigurationResponse[]
    end
end
function Base.getproperty(obj::GetConfigurationResponse, name::Symbol)
    if name === :items
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{dapr.proto.common.v1.ConfigurationItem}
    else
        getfield(obj, name)
    end
end

mutable struct SubscribeConfigurationRequest_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SubscribeConfigurationRequest_MetadataEntry(; kwargs...)
        obj = new(meta(SubscribeConfigurationRequest_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SubscribeConfigurationRequest_MetadataEntry (mapentry)
const __meta_SubscribeConfigurationRequest_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{SubscribeConfigurationRequest_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SubscribeConfigurationRequest_MetadataEntry)
            __meta_SubscribeConfigurationRequest_MetadataEntry[] = target = ProtoMeta(SubscribeConfigurationRequest_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, SubscribeConfigurationRequest_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SubscribeConfigurationRequest_MetadataEntry[]
    end
end
function Base.getproperty(obj::SubscribeConfigurationRequest_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct SubscribeConfigurationRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SubscribeConfigurationRequest(; kwargs...)
        obj = new(meta(SubscribeConfigurationRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SubscribeConfigurationRequest
const __meta_SubscribeConfigurationRequest = Ref{ProtoMeta}()
function meta(::Type{SubscribeConfigurationRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SubscribeConfigurationRequest)
            __meta_SubscribeConfigurationRequest[] = target = ProtoMeta(SubscribeConfigurationRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:store_name => AbstractString, :keys => Base.Vector{AbstractString}, :metadata => Base.Dict{AbstractString,AbstractString}]
            meta(target, SubscribeConfigurationRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SubscribeConfigurationRequest[]
    end
end
function Base.getproperty(obj::SubscribeConfigurationRequest, name::Symbol)
    if name === :store_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :keys
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct SubscribeConfigurationResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SubscribeConfigurationResponse(; kwargs...)
        obj = new(meta(SubscribeConfigurationResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SubscribeConfigurationResponse
const __meta_SubscribeConfigurationResponse = Ref{ProtoMeta}()
function meta(::Type{SubscribeConfigurationResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SubscribeConfigurationResponse)
            __meta_SubscribeConfigurationResponse[] = target = ProtoMeta(SubscribeConfigurationResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:items => Base.Vector{dapr.proto.common.v1.ConfigurationItem}]
            meta(target, SubscribeConfigurationResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SubscribeConfigurationResponse[]
    end
end
function Base.getproperty(obj::SubscribeConfigurationResponse, name::Symbol)
    if name === :items
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{dapr.proto.common.v1.ConfigurationItem}
    else
        getfield(obj, name)
    end
end

# service methods for Dapr
const _Dapr_methods = MethodDescriptor[
        MethodDescriptor("InvokeService", 1, InvokeServiceRequest, dapr.proto.common.v1.InvokeResponse),
        MethodDescriptor("GetState", 2, GetStateRequest, GetStateResponse),
        MethodDescriptor("GetBulkState", 3, GetBulkStateRequest, GetBulkStateResponse),
        MethodDescriptor("SaveState", 4, SaveStateRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("QueryStateAlpha1", 5, QueryStateRequest, QueryStateResponse),
        MethodDescriptor("DeleteState", 6, DeleteStateRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("DeleteBulkState", 7, DeleteBulkStateRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("ExecuteStateTransaction", 8, ExecuteStateTransactionRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("PublishEvent", 9, PublishEventRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("InvokeBinding", 10, InvokeBindingRequest, InvokeBindingResponse),
        MethodDescriptor("GetSecret", 11, GetSecretRequest, GetSecretResponse),
        MethodDescriptor("GetBulkSecret", 12, GetBulkSecretRequest, GetBulkSecretResponse),
        MethodDescriptor("RegisterActorTimer", 13, RegisterActorTimerRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("UnregisterActorTimer", 14, UnregisterActorTimerRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("RegisterActorReminder", 15, RegisterActorReminderRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("UnregisterActorReminder", 16, UnregisterActorReminderRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("GetActorState", 17, GetActorStateRequest, GetActorStateResponse),
        MethodDescriptor("ExecuteActorStateTransaction", 18, ExecuteActorStateTransactionRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("InvokeActor", 19, InvokeActorRequest, InvokeActorResponse),
        MethodDescriptor("GetConfigurationAlpha1", 20, GetConfigurationRequest, GetConfigurationResponse),
        MethodDescriptor("SubscribeConfigurationAlpha1", 21, SubscribeConfigurationRequest, Channel{SubscribeConfigurationResponse}),
        MethodDescriptor("GetMetadata", 22, ProtoBuf.google.protobuf.Empty, GetMetadataResponse),
        MethodDescriptor("SetMetadata", 23, SetMetadataRequest, ProtoBuf.google.protobuf.Empty),
        MethodDescriptor("Shutdown", 24, ProtoBuf.google.protobuf.Empty, ProtoBuf.google.protobuf.Empty)
    ] # const _Dapr_methods
const _Dapr_desc = ServiceDescriptor("dapr.proto.runtime.v1.Dapr", 1, _Dapr_methods)

Dapr(impl::Module) = ProtoService(_Dapr_desc, impl)

mutable struct DaprStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    DaprStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_Dapr_desc, channel))
end # mutable struct DaprStub

mutable struct DaprBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    DaprBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_Dapr_desc, channel))
end # mutable struct DaprBlockingStub

InvokeService(stub::DaprStub, controller::ProtoRpcController, inp::InvokeServiceRequest, done::Function) = call_method(stub.impl, _Dapr_methods[1], controller, inp, done)
InvokeService(stub::DaprBlockingStub, controller::ProtoRpcController, inp::InvokeServiceRequest) = call_method(stub.impl, _Dapr_methods[1], controller, inp)

GetState(stub::DaprStub, controller::ProtoRpcController, inp::GetStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[2], controller, inp, done)
GetState(stub::DaprBlockingStub, controller::ProtoRpcController, inp::GetStateRequest) = call_method(stub.impl, _Dapr_methods[2], controller, inp)

GetBulkState(stub::DaprStub, controller::ProtoRpcController, inp::GetBulkStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[3], controller, inp, done)
GetBulkState(stub::DaprBlockingStub, controller::ProtoRpcController, inp::GetBulkStateRequest) = call_method(stub.impl, _Dapr_methods[3], controller, inp)

SaveState(stub::DaprStub, controller::ProtoRpcController, inp::SaveStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[4], controller, inp, done)
SaveState(stub::DaprBlockingStub, controller::ProtoRpcController, inp::SaveStateRequest) = call_method(stub.impl, _Dapr_methods[4], controller, inp)

QueryStateAlpha1(stub::DaprStub, controller::ProtoRpcController, inp::QueryStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[5], controller, inp, done)
QueryStateAlpha1(stub::DaprBlockingStub, controller::ProtoRpcController, inp::QueryStateRequest) = call_method(stub.impl, _Dapr_methods[5], controller, inp)

DeleteState(stub::DaprStub, controller::ProtoRpcController, inp::DeleteStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[6], controller, inp, done)
DeleteState(stub::DaprBlockingStub, controller::ProtoRpcController, inp::DeleteStateRequest) = call_method(stub.impl, _Dapr_methods[6], controller, inp)

DeleteBulkState(stub::DaprStub, controller::ProtoRpcController, inp::DeleteBulkStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[7], controller, inp, done)
DeleteBulkState(stub::DaprBlockingStub, controller::ProtoRpcController, inp::DeleteBulkStateRequest) = call_method(stub.impl, _Dapr_methods[7], controller, inp)

ExecuteStateTransaction(stub::DaprStub, controller::ProtoRpcController, inp::ExecuteStateTransactionRequest, done::Function) = call_method(stub.impl, _Dapr_methods[8], controller, inp, done)
ExecuteStateTransaction(stub::DaprBlockingStub, controller::ProtoRpcController, inp::ExecuteStateTransactionRequest) = call_method(stub.impl, _Dapr_methods[8], controller, inp)

PublishEvent(stub::DaprStub, controller::ProtoRpcController, inp::PublishEventRequest, done::Function) = call_method(stub.impl, _Dapr_methods[9], controller, inp, done)
PublishEvent(stub::DaprBlockingStub, controller::ProtoRpcController, inp::PublishEventRequest) = call_method(stub.impl, _Dapr_methods[9], controller, inp)

InvokeBinding(stub::DaprStub, controller::ProtoRpcController, inp::InvokeBindingRequest, done::Function) = call_method(stub.impl, _Dapr_methods[10], controller, inp, done)
InvokeBinding(stub::DaprBlockingStub, controller::ProtoRpcController, inp::InvokeBindingRequest) = call_method(stub.impl, _Dapr_methods[10], controller, inp)

GetSecret(stub::DaprStub, controller::ProtoRpcController, inp::GetSecretRequest, done::Function) = call_method(stub.impl, _Dapr_methods[11], controller, inp, done)
GetSecret(stub::DaprBlockingStub, controller::ProtoRpcController, inp::GetSecretRequest) = call_method(stub.impl, _Dapr_methods[11], controller, inp)

GetBulkSecret(stub::DaprStub, controller::ProtoRpcController, inp::GetBulkSecretRequest, done::Function) = call_method(stub.impl, _Dapr_methods[12], controller, inp, done)
GetBulkSecret(stub::DaprBlockingStub, controller::ProtoRpcController, inp::GetBulkSecretRequest) = call_method(stub.impl, _Dapr_methods[12], controller, inp)

RegisterActorTimer(stub::DaprStub, controller::ProtoRpcController, inp::RegisterActorTimerRequest, done::Function) = call_method(stub.impl, _Dapr_methods[13], controller, inp, done)
RegisterActorTimer(stub::DaprBlockingStub, controller::ProtoRpcController, inp::RegisterActorTimerRequest) = call_method(stub.impl, _Dapr_methods[13], controller, inp)

UnregisterActorTimer(stub::DaprStub, controller::ProtoRpcController, inp::UnregisterActorTimerRequest, done::Function) = call_method(stub.impl, _Dapr_methods[14], controller, inp, done)
UnregisterActorTimer(stub::DaprBlockingStub, controller::ProtoRpcController, inp::UnregisterActorTimerRequest) = call_method(stub.impl, _Dapr_methods[14], controller, inp)

RegisterActorReminder(stub::DaprStub, controller::ProtoRpcController, inp::RegisterActorReminderRequest, done::Function) = call_method(stub.impl, _Dapr_methods[15], controller, inp, done)
RegisterActorReminder(stub::DaprBlockingStub, controller::ProtoRpcController, inp::RegisterActorReminderRequest) = call_method(stub.impl, _Dapr_methods[15], controller, inp)

UnregisterActorReminder(stub::DaprStub, controller::ProtoRpcController, inp::UnregisterActorReminderRequest, done::Function) = call_method(stub.impl, _Dapr_methods[16], controller, inp, done)
UnregisterActorReminder(stub::DaprBlockingStub, controller::ProtoRpcController, inp::UnregisterActorReminderRequest) = call_method(stub.impl, _Dapr_methods[16], controller, inp)

GetActorState(stub::DaprStub, controller::ProtoRpcController, inp::GetActorStateRequest, done::Function) = call_method(stub.impl, _Dapr_methods[17], controller, inp, done)
GetActorState(stub::DaprBlockingStub, controller::ProtoRpcController, inp::GetActorStateRequest) = call_method(stub.impl, _Dapr_methods[17], controller, inp)

ExecuteActorStateTransaction(stub::DaprStub, controller::ProtoRpcController, inp::ExecuteActorStateTransactionRequest, done::Function) = call_method(stub.impl, _Dapr_methods[18], controller, inp, done)
ExecuteActorStateTransaction(stub::DaprBlockingStub, controller::ProtoRpcController, inp::ExecuteActorStateTransactionRequest) = call_method(stub.impl, _Dapr_methods[18], controller, inp)

InvokeActor(stub::DaprStub, controller::ProtoRpcController, inp::InvokeActorRequest, done::Function) = call_method(stub.impl, _Dapr_methods[19], controller, inp, done)
InvokeActor(stub::DaprBlockingStub, controller::ProtoRpcController, inp::InvokeActorRequest) = call_method(stub.impl, _Dapr_methods[19], controller, inp)

GetConfigurationAlpha1(stub::DaprStub, controller::ProtoRpcController, inp::GetConfigurationRequest, done::Function) = call_method(stub.impl, _Dapr_methods[20], controller, inp, done)
GetConfigurationAlpha1(stub::DaprBlockingStub, controller::ProtoRpcController, inp::GetConfigurationRequest) = call_method(stub.impl, _Dapr_methods[20], controller, inp)

SubscribeConfigurationAlpha1(stub::DaprStub, controller::ProtoRpcController, inp::SubscribeConfigurationRequest, done::Function) = call_method(stub.impl, _Dapr_methods[21], controller, inp, done)
SubscribeConfigurationAlpha1(stub::DaprBlockingStub, controller::ProtoRpcController, inp::SubscribeConfigurationRequest) = call_method(stub.impl, _Dapr_methods[21], controller, inp)

GetMetadata(stub::DaprStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty, done::Function) = call_method(stub.impl, _Dapr_methods[22], controller, inp, done)
GetMetadata(stub::DaprBlockingStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty) = call_method(stub.impl, _Dapr_methods[22], controller, inp)

SetMetadata(stub::DaprStub, controller::ProtoRpcController, inp::SetMetadataRequest, done::Function) = call_method(stub.impl, _Dapr_methods[23], controller, inp, done)
SetMetadata(stub::DaprBlockingStub, controller::ProtoRpcController, inp::SetMetadataRequest) = call_method(stub.impl, _Dapr_methods[23], controller, inp)

Shutdown(stub::DaprStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty, done::Function) = call_method(stub.impl, _Dapr_methods[24], controller, inp, done)
Shutdown(stub::DaprBlockingStub, controller::ProtoRpcController, inp::ProtoBuf.google.protobuf.Empty) = call_method(stub.impl, _Dapr_methods[24], controller, inp)

export InvokeServiceRequest, GetStateRequest_MetadataEntry, GetStateRequest, GetBulkStateRequest_MetadataEntry, GetBulkStateRequest, GetBulkStateResponse, BulkStateItem_MetadataEntry, BulkStateItem, GetStateResponse_MetadataEntry, GetStateResponse, DeleteStateRequest_MetadataEntry, DeleteStateRequest, DeleteBulkStateRequest, SaveStateRequest, QueryStateRequest_MetadataEntry, QueryStateRequest, QueryStateItem, QueryStateResponse_MetadataEntry, QueryStateResponse, PublishEventRequest_MetadataEntry, PublishEventRequest, InvokeBindingRequest_MetadataEntry, InvokeBindingRequest, InvokeBindingResponse_MetadataEntry, InvokeBindingResponse, GetSecretRequest_MetadataEntry, GetSecretRequest, GetSecretResponse_DataEntry, GetSecretResponse, GetBulkSecretRequest_MetadataEntry, GetBulkSecretRequest, SecretResponse_SecretsEntry, SecretResponse, GetBulkSecretResponse_DataEntry, GetBulkSecretResponse, TransactionalStateOperation, ExecuteStateTransactionRequest_MetadataEntry, ExecuteStateTransactionRequest, RegisterActorTimerRequest, UnregisterActorTimerRequest, RegisterActorReminderRequest, UnregisterActorReminderRequest, GetActorStateRequest, GetActorStateResponse, ExecuteActorStateTransactionRequest, TransactionalActorStateOperation, InvokeActorRequest, InvokeActorResponse, GetMetadataResponse_ExtendedMetadataEntry, GetMetadataResponse, ActiveActorsCount, RegisteredComponents, SetMetadataRequest, GetConfigurationRequest_MetadataEntry, GetConfigurationRequest, GetConfigurationResponse, SubscribeConfigurationRequest_MetadataEntry, SubscribeConfigurationRequest, SubscribeConfigurationResponse, Dapr, DaprStub, DaprBlockingStub, InvokeService, GetState, GetBulkState, SaveState, QueryStateAlpha1, DeleteState, DeleteBulkState, ExecuteStateTransaction, PublishEvent, InvokeBinding, GetSecret, GetBulkSecret, RegisterActorTimer, UnregisterActorTimer, RegisterActorReminder, UnregisterActorReminder, GetActorState, ExecuteActorStateTransaction, InvokeActor, GetConfigurationAlpha1, SubscribeConfigurationAlpha1, GetMetadata, SetMetadata, Shutdown
# mapentries: "SecretResponse_SecretsEntry" => ("AbstractString", "AbstractString"), "GetBulkStateRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "QueryStateRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "SubscribeConfigurationRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "GetBulkSecretRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "BulkStateItem_MetadataEntry" => ("AbstractString", "AbstractString"), "GetStateRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "GetSecretResponse_DataEntry" => ("AbstractString", "AbstractString"), "QueryStateResponse_MetadataEntry" => ("AbstractString", "AbstractString"), "GetStateResponse_MetadataEntry" => ("AbstractString", "AbstractString"), "PublishEventRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "InvokeBindingRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "InvokeBindingResponse_MetadataEntry" => ("AbstractString", "AbstractString"), "GetSecretRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "ExecuteStateTransactionRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "GetConfigurationRequest_MetadataEntry" => ("AbstractString", "AbstractString"), "GetMetadataResponse_ExtendedMetadataEntry" => ("AbstractString", "AbstractString"), "GetBulkSecretResponse_DataEntry" => ("AbstractString", "SecretResponse"), "DeleteStateRequest_MetadataEntry" => ("AbstractString", "AbstractString")
