# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct Status <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Status(; kwargs...)
        obj = new(meta(Status), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Status
const __meta_Status = Ref{ProtoMeta}()
function meta(::Type{Status})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Status)
            __meta_Status[] = target = ProtoMeta(Status)
            allflds = Pair{Symbol,Union{Type,String}}[:code => Int32, :message => AbstractString, :details => Base.Vector{ProtoBuf.google.protobuf._Any}]
            meta(target, Status, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Status[]
    end
end
function Base.getproperty(obj::Status, name::Symbol)
    if name === :code
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :message
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :details
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ProtoBuf.google.protobuf._Any}
    else
        getfield(obj, name)
    end
end

export Status
