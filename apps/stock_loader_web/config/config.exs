# Since configuration is shared in umbrella projects, this file
# should only configure the :stock_loader_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :stock_loader_web,
  ecto_repos: [StockLoader.Repo],
  generators: [context_app: :stock_loader, binary_id: true]

# Configures the endpoint
config :stock_loader_web, StockLoaderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JxToOoEKW44n3KedXpwV93o3Fn0osbnMOjYoYtrL79cN9vaZtT0gVd/2HCBj3mqq",
  render_errors: [view: StockLoaderWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: StockLoaderWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
