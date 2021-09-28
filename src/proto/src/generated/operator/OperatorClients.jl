module OperatorClients
using gRPCClient
using ProtoBuf:google

include("dapr.jl")
using .dapr.proto.operator.v1

import Base: show

# begin service: dapr.proto.operator.v1.Operator

export OperatorBlockingClient, OperatorClient

struct OperatorBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::OperatorBlockingStub

    function OperatorBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = OperatorBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct OperatorClient
    controller::gRPCController
    channel::gRPCChannel
    stub::OperatorStub

    function OperatorClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = OperatorStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::OperatorBlockingClient) = print(io, "OperatorBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::OperatorClient) = print(io, "OperatorClient(", client.channel.baseurl, ")")

import .dapr.proto.operator.v1: ComponentUpdate
"""
    ComponentUpdate

- input: dapr.proto.operator.v1.ComponentUpdateRequest
- output: Channel{dapr.proto.operator.v1.ComponentUpdateEvent}
"""
ComponentUpdate(client::OperatorBlockingClient, inp::dapr.proto.operator.v1.ComponentUpdateRequest) = ComponentUpdate(client.stub, client.controller, inp)
ComponentUpdate(client::OperatorClient, inp::dapr.proto.operator.v1.ComponentUpdateRequest, done::Function) = ComponentUpdate(client.stub, client.controller, inp, done)

import .dapr.proto.operator.v1: ListComponents
"""
    ListComponents

- input: dapr.proto.operator.v1.ListComponentsRequest
- output: dapr.proto.operator.v1.ListComponentResponse
"""
ListComponents(client::OperatorBlockingClient, inp::dapr.proto.operator.v1.ListComponentsRequest) = ListComponents(client.stub, client.controller, inp)
ListComponents(client::OperatorClient, inp::dapr.proto.operator.v1.ListComponentsRequest, done::Function) = ListComponents(client.stub, client.controller, inp, done)

import .dapr.proto.operator.v1: GetConfiguration
"""
    GetConfiguration

- input: dapr.proto.operator.v1.GetConfigurationRequest
- output: dapr.proto.operator.v1.GetConfigurationResponse
"""
GetConfiguration(client::OperatorBlockingClient, inp::dapr.proto.operator.v1.GetConfigurationRequest) = GetConfiguration(client.stub, client.controller, inp)
GetConfiguration(client::OperatorClient, inp::dapr.proto.operator.v1.GetConfigurationRequest, done::Function) = GetConfiguration(client.stub, client.controller, inp, done)

import .dapr.proto.operator.v1: ListSubscriptions
"""
    ListSubscriptions

- input: google.protobuf.Empty
- output: dapr.proto.operator.v1.ListSubscriptionsResponse
"""
ListSubscriptions(client::OperatorBlockingClient, inp::google.protobuf.Empty) = ListSubscriptions(client.stub, client.controller, inp)
ListSubscriptions(client::OperatorClient, inp::google.protobuf.Empty, done::Function) = ListSubscriptions(client.stub, client.controller, inp, done)

# end service: dapr.proto.operator.v1.Operator

end # module DaprClients
