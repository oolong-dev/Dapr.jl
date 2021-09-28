DAPR_VERSION = v"1.4.2"

using Downloads
using CodecZlib
using Tar
using gRPCClient
using ProtoBuf

download_url = "https://github.com/dapr/dapr/archive/refs/tags/v$DAPR_VERSION.tar.gz"

open(Downloads.download(download_url)) do tar_gz
    tar = GzipDecompressorStream(tar_gz)
    dir = Tar.extract(tar)
    proto_dir = joinpath(dir, "dapr-$DAPR_VERSION")

    includes = [
        proto_dir,
        joinpath(pkgdir(ProtoBuf), "gen")
    ]

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "runtime", "v1", "dapr.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "dapr"),
        includes=includes
    )

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "runtime", "v1", "appcallback.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "appcallback"),
        includes=includes
    )

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "sentry", "v1", "sentry.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "sentry"),
        includes=includes
    )

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "operator", "v1", "operator.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "operator"),
        includes=includes
    )

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "placement", "v1", "placement.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "placement"),
        includes=includes
    )

    gRPCClient.generate(
        joinpath(proto_dir, "dapr", "proto", "internals", "v1", "service_invocation.proto")
        ;outdir=joinpath(@__DIR__, "..", "src", "generated", "service_invocation"),
        includes=includes
    )

end

#=
Following up:

1. rename service related module name & filename
2. Add `using ProtoBuf:google` in each client file
3. remove unnecessary google related files
=#
