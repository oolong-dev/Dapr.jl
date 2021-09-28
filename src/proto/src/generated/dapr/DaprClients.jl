module DaprClients
using gRPCClient
using ProtoBuf:google

include("dapr.jl")
using .dapr.proto.runtime.v1

import Base: show

# begin service: dapr.proto.runtime.v1.Dapr

export DaprBlockingClient, DaprClient

struct DaprBlockingClient
    controller::gRPCController
    channel::gRPCChannel
    stub::DaprBlockingStub

    function DaprBlockingClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = DaprBlockingStub(channel)
        new(controller, channel, stub)
    end
end

struct DaprClient
    controller::gRPCController
    channel::gRPCChannel
    stub::DaprStub

    function DaprClient(api_base_url::String; kwargs...)
        controller = gRPCController(; kwargs...)
        channel = gRPCChannel(api_base_url)
        stub = DaprStub(channel)
        new(controller, channel, stub)
    end
end

show(io::IO, client::DaprBlockingClient) = print(io, "DaprBlockingClient(", client.channel.baseurl, ")")
show(io::IO, client::DaprClient) = print(io, "DaprClient(", client.channel.baseurl, ")")

import .dapr.proto.runtime.v1: InvokeService
"""
    InvokeService

- input: dapr.proto.runtime.v1.InvokeServiceRequest
- output: dapr.proto.common.v1.InvokeResponse
"""
InvokeService(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.InvokeServiceRequest) = InvokeService(client.stub, client.controller, inp)
InvokeService(client::DaprClient, inp::dapr.proto.runtime.v1.InvokeServiceRequest, done::Function) = InvokeService(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: GetState
"""
    GetState

- input: dapr.proto.runtime.v1.GetStateRequest
- output: dapr.proto.runtime.v1.GetStateResponse
"""
GetState(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.GetStateRequest) = GetState(client.stub, client.controller, inp)
GetState(client::DaprClient, inp::dapr.proto.runtime.v1.GetStateRequest, done::Function) = GetState(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: GetBulkState
"""
    GetBulkState

- input: dapr.proto.runtime.v1.GetBulkStateRequest
- output: dapr.proto.runtime.v1.GetBulkStateResponse
"""
GetBulkState(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.GetBulkStateRequest) = GetBulkState(client.stub, client.controller, inp)
GetBulkState(client::DaprClient, inp::dapr.proto.runtime.v1.GetBulkStateRequest, done::Function) = GetBulkState(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: SaveState
"""
    SaveState

- input: dapr.proto.runtime.v1.SaveStateRequest
- output: google.protobuf.Empty
"""
SaveState(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.SaveStateRequest) = SaveState(client.stub, client.controller, inp)
SaveState(client::DaprClient, inp::dapr.proto.runtime.v1.SaveStateRequest, done::Function) = SaveState(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: DeleteState
"""
    DeleteState

- input: dapr.proto.runtime.v1.DeleteStateRequest
- output: google.protobuf.Empty
"""
DeleteState(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.DeleteStateRequest) = DeleteState(client.stub, client.controller, inp)
DeleteState(client::DaprClient, inp::dapr.proto.runtime.v1.DeleteStateRequest, done::Function) = DeleteState(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: DeleteBulkState
"""
    DeleteBulkState

- input: dapr.proto.runtime.v1.DeleteBulkStateRequest
- output: google.protobuf.Empty
"""
DeleteBulkState(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.DeleteBulkStateRequest) = DeleteBulkState(client.stub, client.controller, inp)
DeleteBulkState(client::DaprClient, inp::dapr.proto.runtime.v1.DeleteBulkStateRequest, done::Function) = DeleteBulkState(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: ExecuteStateTransaction
"""
    ExecuteStateTransaction

- input: dapr.proto.runtime.v1.ExecuteStateTransactionRequest
- output: google.protobuf.Empty
"""
ExecuteStateTransaction(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.ExecuteStateTransactionRequest) = ExecuteStateTransaction(client.stub, client.controller, inp)
ExecuteStateTransaction(client::DaprClient, inp::dapr.proto.runtime.v1.ExecuteStateTransactionRequest, done::Function) = ExecuteStateTransaction(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: PublishEvent
"""
    PublishEvent

- input: dapr.proto.runtime.v1.PublishEventRequest
- output: google.protobuf.Empty
"""
PublishEvent(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.PublishEventRequest) = PublishEvent(client.stub, client.controller, inp)
PublishEvent(client::DaprClient, inp::dapr.proto.runtime.v1.PublishEventRequest, done::Function) = PublishEvent(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: InvokeBinding
"""
    InvokeBinding

- input: dapr.proto.runtime.v1.InvokeBindingRequest
- output: dapr.proto.runtime.v1.InvokeBindingResponse
"""
InvokeBinding(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.InvokeBindingRequest) = InvokeBinding(client.stub, client.controller, inp)
InvokeBinding(client::DaprClient, inp::dapr.proto.runtime.v1.InvokeBindingRequest, done::Function) = InvokeBinding(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: GetSecret
"""
    GetSecret

- input: dapr.proto.runtime.v1.GetSecretRequest
- output: dapr.proto.runtime.v1.GetSecretResponse
"""
GetSecret(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.GetSecretRequest) = GetSecret(client.stub, client.controller, inp)
GetSecret(client::DaprClient, inp::dapr.proto.runtime.v1.GetSecretRequest, done::Function) = GetSecret(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: GetBulkSecret
"""
    GetBulkSecret

- input: dapr.proto.runtime.v1.GetBulkSecretRequest
- output: dapr.proto.runtime.v1.GetBulkSecretResponse
"""
GetBulkSecret(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.GetBulkSecretRequest) = GetBulkSecret(client.stub, client.controller, inp)
GetBulkSecret(client::DaprClient, inp::dapr.proto.runtime.v1.GetBulkSecretRequest, done::Function) = GetBulkSecret(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: RegisterActorTimer
"""
    RegisterActorTimer

- input: dapr.proto.runtime.v1.RegisterActorTimerRequest
- output: google.protobuf.Empty
"""
RegisterActorTimer(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.RegisterActorTimerRequest) = RegisterActorTimer(client.stub, client.controller, inp)
RegisterActorTimer(client::DaprClient, inp::dapr.proto.runtime.v1.RegisterActorTimerRequest, done::Function) = RegisterActorTimer(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: UnregisterActorTimer
"""
    UnregisterActorTimer

- input: dapr.proto.runtime.v1.UnregisterActorTimerRequest
- output: google.protobuf.Empty
"""
UnregisterActorTimer(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.UnregisterActorTimerRequest) = UnregisterActorTimer(client.stub, client.controller, inp)
UnregisterActorTimer(client::DaprClient, inp::dapr.proto.runtime.v1.UnregisterActorTimerRequest, done::Function) = UnregisterActorTimer(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: RegisterActorReminder
"""
    RegisterActorReminder

- input: dapr.proto.runtime.v1.RegisterActorReminderRequest
- output: google.protobuf.Empty
"""
RegisterActorReminder(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.RegisterActorReminderRequest) = RegisterActorReminder(client.stub, client.controller, inp)
RegisterActorReminder(client::DaprClient, inp::dapr.proto.runtime.v1.RegisterActorReminderRequest, done::Function) = RegisterActorReminder(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: UnregisterActorReminder
"""
    UnregisterActorReminder

- input: dapr.proto.runtime.v1.UnregisterActorReminderRequest
- output: google.protobuf.Empty
"""
UnregisterActorReminder(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.UnregisterActorReminderRequest) = UnregisterActorReminder(client.stub, client.controller, inp)
UnregisterActorReminder(client::DaprClient, inp::dapr.proto.runtime.v1.UnregisterActorReminderRequest, done::Function) = UnregisterActorReminder(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: GetActorState
"""
    GetActorState

- input: dapr.proto.runtime.v1.GetActorStateRequest
- output: dapr.proto.runtime.v1.GetActorStateResponse
"""
GetActorState(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.GetActorStateRequest) = GetActorState(client.stub, client.controller, inp)
GetActorState(client::DaprClient, inp::dapr.proto.runtime.v1.GetActorStateRequest, done::Function) = GetActorState(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: ExecuteActorStateTransaction
"""
    ExecuteActorStateTransaction

- input: dapr.proto.runtime.v1.ExecuteActorStateTransactionRequest
- output: google.protobuf.Empty
"""
ExecuteActorStateTransaction(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.ExecuteActorStateTransactionRequest) = ExecuteActorStateTransaction(client.stub, client.controller, inp)
ExecuteActorStateTransaction(client::DaprClient, inp::dapr.proto.runtime.v1.ExecuteActorStateTransactionRequest, done::Function) = ExecuteActorStateTransaction(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: InvokeActor
"""
    InvokeActor

- input: dapr.proto.runtime.v1.InvokeActorRequest
- output: dapr.proto.runtime.v1.InvokeActorResponse
"""
InvokeActor(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.InvokeActorRequest) = InvokeActor(client.stub, client.controller, inp)
InvokeActor(client::DaprClient, inp::dapr.proto.runtime.v1.InvokeActorRequest, done::Function) = InvokeActor(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: GetMetadata
"""
    GetMetadata

- input: google.protobuf.Empty
- output: dapr.proto.runtime.v1.GetMetadataResponse
"""
GetMetadata(client::DaprBlockingClient, inp::google.protobuf.Empty) = GetMetadata(client.stub, client.controller, inp)
GetMetadata(client::DaprClient, inp::google.protobuf.Empty, done::Function) = GetMetadata(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: SetMetadata
"""
    SetMetadata

- input: dapr.proto.runtime.v1.SetMetadataRequest
- output: google.protobuf.Empty
"""
SetMetadata(client::DaprBlockingClient, inp::dapr.proto.runtime.v1.SetMetadataRequest) = SetMetadata(client.stub, client.controller, inp)
SetMetadata(client::DaprClient, inp::dapr.proto.runtime.v1.SetMetadataRequest, done::Function) = SetMetadata(client.stub, client.controller, inp, done)

import .dapr.proto.runtime.v1: Shutdown
"""
    Shutdown

- input: google.protobuf.Empty
- output: google.protobuf.Empty
"""
Shutdown(client::DaprBlockingClient, inp::google.protobuf.Empty) = Shutdown(client.stub, client.controller, inp)
Shutdown(client::DaprClient, inp::google.protobuf.Empty, done::Function) = Shutdown(client.stub, client.controller, inp, done)

# end service: dapr.proto.runtime.v1.Dapr

end # module DaprClients
