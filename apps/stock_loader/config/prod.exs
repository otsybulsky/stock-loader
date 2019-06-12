# Since configuration is shared in umbrella projects, this file
# should only configure the :stock_loader application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :stock_loader, StockLoader.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: "${DATABASE_URL}",
  database: "",
  ssl: true,
  pool_size: 2
