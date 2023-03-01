import Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :blockclock, BlockclockWeb.Endpoint, cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

# ## SSL Support
#
# To get SSL working, you will need to add the `https` key
# to the previous section and set your `:url` port to 443:
#
config :test_app, TestAppWeb.Endpoint,
http: [port: {:system, "PORT"}],
url: [scheme: "https", host: "stormy-stream-65433.herokuapp.com", port: 443],
force_ssl: [rewrite_on: [:x_forwarded_proto]],
secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")

# Do not print debug messages in production


# Configure your database
config :test_app, TestApp.Repo,
adapter: Ecto.Adapters.Postgres,
hostname: System.get_env("postgresql-amorphous-81070"),
pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
ssl: true,
