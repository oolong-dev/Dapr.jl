module AppCallbackClients
using gRPCClient
using ProtoBuf:google

include("dapr.jl")
using .dapr.proto.runtime.v1

import Base: show

# begin service: dapr.proto.runtime.v1.AppCallback

export AppCallbackBlockingClient, AppCallbackClient

struct AppCallbackBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::AppCallbackBlockingStub

    function AppCallbackBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = AppCallbackBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct AppCallbackClient
    controller::gRPCController
    channel::gRPCChannel
    stub::AppCallbackStub

    function AppCallbackClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = AppCallbackStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::AppCallbackBlockingClient) = print(io, "AppCallbackBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::AppCallbackClient) = print(io, "AppCallbackClient(", client.channel.baseurl, ")")

import .dapr.proto.runtime.v1: OnInvoke
"""
    OnInvoke

- input: dapr.proto.common.v1.InvokeRequest
- output: dapr.proto.common.v1.InvokeResponse
"""
OnInvoke(client::AppCallbackBlockingClient, inp::dapr.proto.common.v1.InvokeRequest) = OnInvoke(client.stub, client.controller, inp)
OnInvoke(client::AppCallbackClient, inp::dapr.proto.common.v1.InvokeRequest, done::Function) = OnInvoke(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: ListTopicSubscriptions
"""
    ListTopicSubscriptions

- input: google.protobuf.Empty
- output: dapr.proto.runtime.v1.ListTopicSubscriptionsResponse
"""
ListTopicSubscriptions(client::AppCallbackBlockingClient, inp::google.protobuf.Empty) = ListTopicSubscriptions(client.stub, client.controller, inp)
ListTopicSubscriptions(client::AppCallbackClient, inp::google.protobuf.Empty, done::Function) = ListTopicSubscriptions(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: OnTopicEvent
"""
    OnTopicEvent

- input: dapr.proto.runtime.v1.TopicEventRequest
- output: dapr.proto.runtime.v1.TopicEventResponse
"""
OnTopicEvent(client::AppCallbackBlockingClient, inp::dapr.proto.runtime.v1.TopicEventRequest) = OnTopicEvent(client.stub, client.controller, inp)
OnTopicEvent(client::AppCallbackClient, inp::dapr.proto.runtime.v1.TopicEventRequest, done::Function) = OnTopicEvent(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: ListInputBindings
"""
    ListInputBindings

- input: google.protobuf.Empty
- output: dapr.proto.runtime.v1.ListInputBindingsResponse
"""
ListInputBindings(client::AppCallbackBlockingClient, inp::google.protobuf.Empty) = ListInputBindings(client.stub, client.controller, inp)
ListInputBindings(client::AppCallbackClient, inp::google.protobuf.Empty, done::Function) = ListInputBindings(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: OnBindingEvent
"""
    OnBindingEvent

- input: dapr.proto.runtime.v1.BindingEventRequest
- output: dapr.proto.runtime.v1.BindingEventResponse
"""
OnBindingEvent(client::AppCallbackBlockingClient, inp::dapr.proto.runtime.v1.BindingEventRequest) = OnBindingEvent(client.stub, client.controller, inp)
OnBindingEvent(client::AppCallbackClient, inp::dapr.proto.runtime.v1.BindingEventRequest, done::Function) = OnBindingEvent(client.stub, client.controller, inp, done)

# end service: dapr.proto.runtime.v1.AppCallback

end # module DaprClients
