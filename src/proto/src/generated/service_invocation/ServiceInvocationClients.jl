module ServiceInvocationClients
using gRPCClient
using ProtoBuf:google

include("dapr.jl")
using .dapr.proto.internals.v1

import Base: show

# begin service: dapr.proto.internals.v1.ServiceInvocation

export ServiceInvocationBlockingClient, ServiceInvocationClient

struct ServiceInvocationBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::ServiceInvocationBlockingStub

    function ServiceInvocationBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = ServiceInvocationBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct ServiceInvocationClient
    controller::gRPCController
    channel::gRPCChannel
    stub::ServiceInvocationStub

    function ServiceInvocationClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = ServiceInvocationStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::ServiceInvocationBlockingClient) = print(io, "ServiceInvocationBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::ServiceInvocationClient) = print(io, "ServiceInvocationClient(", client.channel.baseurl, ")")

import .dapr.proto.internals.v1: CallActor
"""
    CallActor

- input: dapr.proto.internals.v1.InternalInvokeRequest
- output: dapr.proto.internals.v1.InternalInvokeResponse
"""
CallActor(client::ServiceInvocationBlockingClient, inp::dapr.proto.internals.v1.InternalInvokeRequest) = CallActor(client.stub, client.controller, inp)
CallActor(client::ServiceInvocationClient, inp::dapr.proto.internals.v1.InternalInvokeRequest, done::Function) = CallActor(client.stub, client.controller, inp, done)

import .dapr.proto.internals.v1: CallLocal
"""
    CallLocal

- input: dapr.proto.internals.v1.InternalInvokeRequest
- output: dapr.proto.internals.v1.InternalInvokeResponse
"""
CallLocal(client::ServiceInvocationBlockingClient, inp::dapr.proto.internals.v1.InternalInvokeRequest) = CallLocal(client.stub, client.controller, inp)
CallLocal(client::ServiceInvocationClient, inp::dapr.proto.internals.v1.InternalInvokeRequest, done::Function) = CallLocal(client.stub, client.controller, inp, done)

# end service: dapr.proto.internals.v1.ServiceInvocation

end # module DaprClients
