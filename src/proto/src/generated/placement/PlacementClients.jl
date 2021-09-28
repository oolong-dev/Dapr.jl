module PlacementClients
using gRPCClient
using ProtoBuf:google

include("dapr.jl")
using .dapr.proto.placement.v1

import Base: show

# begin service: dapr.proto.placement.v1.Placement

export PlacementBlockingClient, PlacementClient

struct PlacementBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::PlacementBlockingStub

    function PlacementBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = PlacementBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct PlacementClient
    controller::gRPCController
    channel::gRPCChannel
    stub::PlacementStub

    function PlacementClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = PlacementStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::PlacementBlockingClient) = print(io, "PlacementBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::PlacementClient) = print(io, "PlacementClient(", client.channel.baseurl, ")")

import .dapr.proto.placement.v1: ReportDaprStatus
"""
    ReportDaprStatus

- input: Channel{dapr.proto.placement.v1.Host}
- output: Channel{dapr.proto.placement.v1.PlacementOrder}
"""
ReportDaprStatus(client::PlacementBlockingClient, inp::Channel{dapr.proto.placement.v1.Host}) = ReportDaprStatus(client.stub, client.controller, inp)
ReportDaprStatus(client::PlacementClient, inp::Channel{dapr.proto.placement.v1.Host}, done::Function) = ReportDaprStatus(client.stub, client.controller, inp, done)

# end service: dapr.proto.placement.v1.Placement

end # module DaprClients
