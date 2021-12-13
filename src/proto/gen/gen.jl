DAPR_VERSION = v"1.5.1"

using Downloads
using CodecZlib
using Tar
using gRPCClient
using ProtoBuf

download_url = "https://github.com/dapr/dapr/archive/refs/tags/v$DAPR_VERSION.tar.gz"

open(Downloads.download(download_url)) do tar_gz
    tar = GzipDecompressorStream(tar_gz)
    tar_dir = joinpath(@__DIR__, "dapr")
    rm(tar_dir; force=true, recursive=true)
    Tar.extract(tar, tar_dir)
    proto_dir = joinpath(@__DIR__, "dapr", "dapr-$DAPR_VERSION")

    includes = [
        proto_dir,
        joinpath(pkgdir(ProtoBuf), "gen")
    ]

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "runtime", "v1", "dapr.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "dapr"),
        includes=includes
    )

end

#=
Following up:

Currently using https://github.com/findmyway/ProtoBuf.jl/commit/cb37852a248bfb9ff781ac35621553c3487bdbb6

1. rename service related module name & filename
2. Add `using ProtoBuf:google` in each client file
3. remove unnecessary google related files
=#
