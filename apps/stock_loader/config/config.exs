# Since configuration is shared in umbrella projects, this file
# should only configure the :stock_loader application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :stock_loader,
  ecto_repos: [StockLoader.Repo]

import_config "#{Mix.env()}.exs"
