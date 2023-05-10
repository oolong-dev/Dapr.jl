using JSON3
using URIs: URI, resolvereference
using HTTP

DAPR_RUNTIME_HOST() = get(ENV, "DAPR_RUNTIME_HOST", "127.0.0.1")
DAPR_HTTP_PORT() = get(ENV, "DAPR_HTTP_PORT", 3500)
DAPR_API_VERSION() = get(ENV, "DAPR_API_VERSION", "v1.0")
DAPR_API_TOKEN() = get(ENV, "DAPR_API_TOKEN", nothing)
DAPR_HTTP_TIMEOUT_SECONDS = 60

function dapr_api_base(
    host=DAPR_RUNTIME_HOST(),
    port=DAPR_HTTP_PORT(),
    version=DAPR_API_VERSION()
)
    "http://$host:$port/$version/"
end

function send_data(method::String, url::URI, data; headers=HTTP.Headers(), query=nothing, timeout=nothing)
    headers = copy(headers)

    HTTP.Messages.hasheader(headers, "User-Agent") || push!(headers, "User-Agent" => "dapr-sdk-julia")
    HTTP.Messages.hasheader(headers, "Content-Type") || push!(headers, "Content-Type" => "application/json; charset=utf-8")

    if !HTTP.Messages.hasheader(headers, "dapr-api-token")
        token = DAPR_API_TOKEN()
        isnothing(token) || push!(headers, "dapr-api-token" => token)
    end

    HTTP.request(
        method,
        url,
        headers,
        data;
        query=query,
        readtimeout=timeout
    )
end

struct DaprResponse
    data::Union{Vector{UInt8},IO}
    content_type::String
end

export invoke_method
function invoke_method(app_id, method_name, data; verb="GET", kw...)
    url_base = dapr_api_base()
    url = "$url_base/invoke/$app_id/method/$method_name"
    resp = send_data(verb, url, JSON3.write(data); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export invoke_binding
function invoke_binding(binding_name, operation, data; metadata=Dict(), kw...)
    url_base = dapr_api_base()
    url = "$url_base/bindings/$binding_name"
    payload = Dict(
        "data" => data,
        "metadata" => metadata,
        "operation" => operation
    )
    resp = send_data("POST", url, JSON3.write(payload); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export publish_event
function publish_event(pubsub_name, topic_name, data; kw...)
    url_base = dapr_api_base()
    url = "$url_base/publish/$pubsub_name/$topic_name"
    resp = send_data("POST", url, JSON3.write(data); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export get_state
function get_state(store_name, key; kw...)
    url_base = dapr_api_base()
    url = "$url_base/state/$store_name/$key"
    resp = send_data("GET", url, HTTP.nobody; kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export get_bulk_state
function get_bulk_state(store_name, ks; parallelism=1, kw...)
    url_base = dapr_api_base()
    url = "$url_base/state/$store_name/bulk"
    resp = send_data("POST", url, JSON.write(Dict("keys" => ks, "parallelism" => parallelism)); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export delete_state
function delete_state(store_name, key; kw...)
    url_base = dapr_api_base()
    url = "$url_base/state/$store_name/$key"
    resp = send_data("DELETE", url, HTTP.nobody; kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export save_state
function save_state(store_name, key, value, etag=nothing; kw...)
    url_base = dapr_api_base()
    url = "$url_base/state/$store_name"
    payload = Dict("key" => key, "value" => value)
    if !isnothing(etag)
        payload["etag"] = etag
    end
    resp = send_data("POST", url, JSON3.write(payload); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export save_bulk_state
function save_bulk_state(store_name, kv, etag=nothing; kw...)
    url_base = dapr_api_base()
    url = "$url_base/state/$store_name"
    resp = send_data("POST", url, JSON3.write(kv); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export execute_state_transaction
function execute_state_transaction(store_name, operations; kw...)
    url_base = dapr_api_base()
    url = "$url_base/state/$store_name/transaction"
    resp = send_data("POST", url, JSON3.write(operations); kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export get_secret
function get_secret(store_name, key; kw...)
    url_base = dapr_api_base()
    url = "$url_base/secrets/$store_name/$key"
    resp = send_data("GET", url, HTTP.nobody; kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export get_bulk_secret
function get_bulk_secret(store_name, key; kw...)
    url_base = dapr_api_base()
    url = "$url_base/secrets/$store_name/bulk"
    resp = send_data("GET", url, HTTP.nobody; kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export get_configuration
function get_configuration(store_name, keys; kw...)
    url_base = dapr_api_base(version="v1.0-alpha1")
    url = "$url_base/configuration/$store_name"
    resp = send_data("GET", url, HTTP.nobody; query=["key" => k for k in keys], kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export subscribe_configuration
function subscribe_configuration(store_name, keys; kw...)
    url_base = dapr_api_base(version="v1.0-alpha1")
    url = "$url_base/configuration/$store_name/subscribe"
    resp = send_data("GET", url, HTTP.nobody; query=["key" => k for k in keys], kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export unsubscribe_configuration
function unsubscribe_configuration(store_name, subscription_id; kw...)
    url_base = dapr_api_base(version="v1.0-alpha1")
    url = "$url_base/configuration/$store_name/$subscription_id/unsubscribe"
    resp = send_data("GET", url, HTTP.nobody, kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export is_healthy
function is_healthy(; kw...)
    try
        url_base = dapr_api_base()
        url = "$url_base/healthz"
        send_data("GET", url, HTTP.nobody, kw...)
        true
    catch
        false
    end
end

export get_metadata
function get_metadata(; kw...)
    url_base = dapr_api_base()
    url = "$url_base/metadata"
    resp = send_data("GET", url, HTTP.nobody, kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export set_metadata
function set_metadata(k, v; kw...)
    url_base = dapr_api_base()
    url = "$url_base/metadata/$k"
    resp = send_data("PUT", url, v, kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export lock_dapr
function lock_dapr(store_name, data; kw...)
    url_base = dapr_api_base(version="v1.0-alpha1")
    url = "$url_base/lock/$store_name"
    resp = send_data("POST", url, JSON3.write(data), kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end

export unlock_dapr
function unlock_dapr(store_name, data; kw...)
    url_base = dapr_api_base(version="v1.0-alpha1")
    url = "$url_base/unlock/$store_name"
    resp = send_data("POST", url, JSON3.write(data), kw...)
    DaprResponse(resp.body, HTTP.headers(resp, "content-type"))
end