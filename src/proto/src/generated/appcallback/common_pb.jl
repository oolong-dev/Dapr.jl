# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

const HTTPExtension_Verb = (;[
    Symbol("NONE") => Int32(0),
    Symbol("GET") => Int32(1),
    Symbol("HEAD") => Int32(2),
    Symbol("POST") => Int32(3),
    Symbol("PUT") => Int32(4),
    Symbol("DELETE") => Int32(5),
    Symbol("CONNECT") => Int32(6),
    Symbol("OPTIONS") => Int32(7),
    Symbol("TRACE") => Int32(8),
]...)

mutable struct HTTPExtension <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function HTTPExtension(; kwargs...)
        obj = new(meta(HTTPExtension), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct HTTPExtension
const __meta_HTTPExtension = Ref{ProtoMeta}()
function meta(::Type{HTTPExtension})
    ProtoBuf.metalock() do
        if !isassigned(__meta_HTTPExtension)
            __meta_HTTPExtension[] = target = ProtoMeta(HTTPExtension)
            allflds = Pair{Symbol,Union{Type,String}}[:verb => Int32, :querystring => AbstractString]
            meta(target, HTTPExtension, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_HTTPExtension[]
    end
end
function Base.getproperty(obj::HTTPExtension, name::Symbol)
    if name === :verb
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :querystring
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct InvokeRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeRequest(; kwargs...)
        obj = new(meta(InvokeRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeRequest
const __meta_InvokeRequest = Ref{ProtoMeta}()
function meta(::Type{InvokeRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeRequest)
            __meta_InvokeRequest[] = target = ProtoMeta(InvokeRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:method => AbstractString, :data => ProtoBuf.google.protobuf._Any, :content_type => AbstractString, :http_extension => HTTPExtension]
            meta(target, InvokeRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeRequest[]
    end
end
function Base.getproperty(obj::InvokeRequest, name::Symbol)
    if name === :method
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    elseif name === :content_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :http_extension
        return (obj.__protobuf_jl_internal_values[name])::HTTPExtension
    else
        getfield(obj, name)
    end
end

mutable struct InvokeResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InvokeResponse(; kwargs...)
        obj = new(meta(InvokeResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InvokeResponse
const __meta_InvokeResponse = Ref{ProtoMeta}()
function meta(::Type{InvokeResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InvokeResponse)
            __meta_InvokeResponse[] = target = ProtoMeta(InvokeResponse)
            allflds = Pair{Symbol,Union{Type,String}}[:data => ProtoBuf.google.protobuf._Any, :content_type => AbstractString]
            meta(target, InvokeResponse, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InvokeResponse[]
    end
end
function Base.getproperty(obj::InvokeResponse, name::Symbol)
    if name === :data
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    elseif name === :content_type
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Etag <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Etag(; kwargs...)
        obj = new(meta(Etag), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Etag
const __meta_Etag = Ref{ProtoMeta}()
function meta(::Type{Etag})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Etag)
            __meta_Etag[] = target = ProtoMeta(Etag)
            allflds = Pair{Symbol,Union{Type,String}}[:value => AbstractString]
            meta(target, Etag, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Etag[]
    end
end
function Base.getproperty(obj::Etag, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

const StateOptions_StateConcurrency = (;[
    Symbol("CONCURRENCY_UNSPECIFIED") => Int32(0),
    Symbol("CONCURRENCY_FIRST_WRITE") => Int32(1),
    Symbol("CONCURRENCY_LAST_WRITE") => Int32(2),
]...)

const StateOptions_StateConsistency = (;[
    Symbol("CONSISTENCY_UNSPECIFIED") => Int32(0),
    Symbol("CONSISTENCY_EVENTUAL") => Int32(1),
    Symbol("CONSISTENCY_STRONG") => Int32(2),
]...)

mutable struct StateOptions <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StateOptions(; kwargs...)
        obj = new(meta(StateOptions), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StateOptions
const __meta_StateOptions = Ref{ProtoMeta}()
function meta(::Type{StateOptions})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StateOptions)
            __meta_StateOptions[] = target = ProtoMeta(StateOptions)
            allflds = Pair{Symbol,Union{Type,String}}[:concurrency => Int32, :consistency => Int32]
            meta(target, StateOptions, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StateOptions[]
    end
end
function Base.getproperty(obj::StateOptions, name::Symbol)
    if name === :concurrency
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :consistency
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct StateItem_MetadataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StateItem_MetadataEntry(; kwargs...)
        obj = new(meta(StateItem_MetadataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StateItem_MetadataEntry (mapentry)
const __meta_StateItem_MetadataEntry = Ref{ProtoMeta}()
function meta(::Type{StateItem_MetadataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StateItem_MetadataEntry)
            __meta_StateItem_MetadataEntry[] = target = ProtoMeta(StateItem_MetadataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, StateItem_MetadataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StateItem_MetadataEntry[]
    end
end
function Base.getproperty(obj::StateItem_MetadataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct StateItem <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StateItem(; kwargs...)
        obj = new(meta(StateItem), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StateItem
const __meta_StateItem = Ref{ProtoMeta}()
function meta(::Type{StateItem})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StateItem)
            __meta_StateItem[] = target = ProtoMeta(StateItem)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Vector{UInt8}, :etag => Etag, :metadata => Base.Dict{AbstractString,AbstractString}, :options => StateOptions]
            meta(target, StateItem, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StateItem[]
    end
end
function Base.getproperty(obj::StateItem, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :etag
        return (obj.__protobuf_jl_internal_values[name])::Etag
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    elseif name === :options
        return (obj.__protobuf_jl_internal_values[name])::StateOptions
    else
        getfield(obj, name)
    end
end

export HTTPExtension_Verb, HTTPExtension, InvokeRequest, InvokeResponse, StateItem_MetadataEntry, StateItem, Etag, StateOptions_StateConcurrency, StateOptions_StateConsistency, StateOptions
# mapentries: "StateItem_MetadataEntry" => ("AbstractString", "AbstractString")
