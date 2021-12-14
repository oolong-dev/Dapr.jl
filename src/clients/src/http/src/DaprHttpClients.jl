module DaprHttpClients

export DaprHttpClient

using HTTP
using URIs
using JSON3

function with_path(u::URI, path::String)
    URI(;
        scheme=u.scheme,
        userinfo=u.userinfo,
        host=u.host,
        port=u.port,
        path=path,
        query=u.query,
        fragment=u.fragment
    )
end

const DAPR_VERSION = "v1.0"

struct DaprHttpClient{O}
    url::URI
    headers::Vector{Pair{String,String}}
    options::O
end

function DaprHttpClient(
    ;
    scheme="http",
    host="127.0.0.1",
    port = 3500,
    query = "",
    headers = ["content-type" => "application/json"],
    options = (readtimeout=60,)
)
    url = URI(;scheme=scheme, host=host, port=port, query=query)
    DaprHttpClient(url, headers, options)
end

const GLOBAL_DAPR_HTTP_CLIENT = Ref{DaprHttpClient}()

global_dapr_http_client() = GLOBAL_DAPR_HTTP_CLIENT[]
global_dapr_http_client(client) = GLOBAL_DAPR_HTTP_CLIENT[] = client

#####

struct DaprInvocationHttpClient{C<:DaprHttpClient}
    app::String
    client::C
end

service(app::String) = service(global_dapr_http_client(), app)

service(client, app) = DaprInvocationHttpClient(app, client)

function Base.getproperty(c::DaprInvocationHttpClient, p::Symbol)
    app, client = getfield(c, :app), getfield(c, :client)
    function invoke(data;verb="GET")
        HTTP.request(
            verb,
            with_path(client.url, "/$(DAPR_VERSION)/invoke/$(app)/method/$p")
            client.headers,
            data;
            client.options...
        )
    end
end

#####

struct DaprStateHttpClient{C<:DaprHttpClient}
    store::String
    client::C
end

state(store::String, client=global_dapr_http_client()) = DaprStateHttpClient(store, client)

function Base.setindex!(c::DaprStateHttpClient, v, key::Union{AbstractString,Symbol})
    HTTP.request(
        "POST",
        with_path(c.client.url, "/$(DAPR_VERSION)/state/$(c.store)"),
        c.client.headers,
        JSON3.write(
            [
                v isa Tuple ? (key=key, value=v[1], etag=v[2]) : (key=key, value=v)
            ]
        ),
        ;c.client.options...
    )
end

function Base.setindex!(c::DaprStateHttpClient, values::AbstractVector, keys::AbstractVector{<:Union{AbstractString,Symbol}})
    body = if values isa AbstractVector{<:Tuple}
        ((key=key, value=v[1], etag=v[2]) for (k,v) in zip(keys, values))
    else
        ((key=key, value=v) for (k,v) in zip(keys, values))
    end

    HTTP.request(
        "POST",
        with_path(c.client.url, "/$(DAPR_VERSION)/state/$(c.store)"),
        c.client.headers,
        JSON3.write(body),
        ;c.client.options...
    )
end

function Base.getindex(c::DaprStateHttpClient, key::Union{AbstractString,Symbol})
    HTTP.request(
        "GET",
        with_path(c.client.url, "/$(DAPR_VERSION)/state/$(c.store)/key/$key"),
        c.client.headers,
        ;c.client.options...
    )
end

function Base.getindex(c::DaprStateHttpClient, keys)
    HTTP.request(
        "POST",
        with_path(c.client.url, "/$(DAPR_VERSION)/state/$(c.store)/bulk"),
        c.client.headers,
        JSON3.write(Dict("keys" => keys))
        ;c.client.options...
    )
end

function Base.delete!(c::DaprStateHttpClient, key)
    HTTP.request(
        "DELETE",
        with_path(c.client.url, "/$(DAPR_VERSION)/state/$(c.store)/$key"),
        c.client.headers,
        ;c.client.options...
    )
end

# TODO: define operations, map to StructTypes.DictType()
function (c::DaprStateHttpClient)(operations)
    HTTP.request(
        "POST",
        with_path(c.client.url, "/$(DAPR_VERSION)/state/$(c.store)/transaction"),
        c.client.headers,
        JSON3.write((operations=operations,))
        ;c.client.options...
    )
end

#####

struct DaprPubsubHttpClient{C<:DaprHttpClient}
    name::String
    client::C
end

pubsub(name, client=global_dapr_http_client()) = DaprPubsubHttpClient(name, client)

function Base.push!(c::DaprPubsubHttpClient, (topic, data))
    HTTP.request(
        "POST",
        with_path(c.client.url, "/$(DAPR_VERSION)/publish/$(c.name)/$topic"),
        c.client.headers,
        JSON3.write(data)
        ;c.client.options...
    )
end

#####

# TODO: Actors

#####

struct DaprSecretHttpClient{C<:DaprHttpClient}
    store::String
    client::C
end

secret(store, client=global_dapr_http_client()) = DaprSecretHttpClient(store, client)

function Base.getindex(c::DaprSecretHttpClient, key::Union{AbstractString,Symbol})
    HTTP.request(
        "GET",
        with_path(c.client.url, "/$(DAPR_VERSION)/secrets/$(c.store)/$key"),
        c.client.headers,
        ;c.client.options...
    )
end

function Base.getindex(c::DaprSecretHttpClient)
    HTTP.request(
        "GET",
        with_path(c.client.url, "/$(DAPR_VERSION)/secrets/$(c.store)/bulk"),
        c.client.headers,
        ;c.client.options...
    )
end

#####

function healthz(c=global_dapr_http_client())
    HTTP.request(
        "GET",
        with_path(c.client.url, "/$(DAPR_VERSION)/healthz"),
        c.client.headers,
        ;c.client.options...
    )
end

#####

function get_metadata(c=global_dapr_http_client())
    HTTP.request(
        "GET",
        with_path(c.client.url, "/$(DAPR_VERSION)/metadata"),
        c.client.headers,
        ;c.client.options...
    )
end

function set_metadata!((k,v))
    HTTP.request(
        "PUT",
        with_path(c.client.url, "/$(DAPR_VERSION)/metadata/$k"),
        c.client.headers,
        v,
        ;c.client.options...
    )
end

end # module
