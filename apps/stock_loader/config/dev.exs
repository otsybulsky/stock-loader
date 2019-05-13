# Since configuration is shared in umbrella projects, this file
# should only configure the :stock_loader application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :stock_loader, StockLoader.Repo,
  username: "postgres",
  password: "postgres",
  database: "stock_loader_dev",
  hostname: "localhost",
  pool_size: 10
