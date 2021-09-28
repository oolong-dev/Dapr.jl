module SentryClients
using gRPCClient
using ProtoBuf:google

include("dapr.jl")
using .dapr.proto.sentry.v1

import Base: show

# begin service: dapr.proto.sentry.v1.CA

export CABlockingClient, CAClient

struct CABlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::CABlockingStub

    function CABlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = CABlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct CAClient
    controller::gRPCController
    channel::gRPCChannel
    stub::CAStub

    function CAClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = CAStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::CABlockingClient) = print(io, "CABlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::CAClient) = print(io, "CAClient(", client.channel.baseurl, ")")

import .dapr.proto.sentry.v1: SignCertificate
"""
    SignCertificate

- input: dapr.proto.sentry.v1.SignCertificateRequest
- output: dapr.proto.sentry.v1.SignCertificateResponse
"""
SignCertificate(client::CABlockingClient, inp::dapr.proto.sentry.v1.SignCertificateRequest) = SignCertificate(client.stub, client.controller, inp)
SignCertificate(client::CAClient, inp::dapr.proto.sentry.v1.SignCertificateRequest, done::Function) = SignCertificate(client.stub, client.controller, inp, done)

# end service: dapr.proto.sentry.v1.CA

end # module DaprClients
