# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const APIVersion = (;[
    Symbol("APIVERSION_UNSPECIFIED") => Int32(0),
    Symbol("V1") => Int32(1),
]...)

export APIVersion
