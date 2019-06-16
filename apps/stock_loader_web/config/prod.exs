use Mix.Config

config :stock_loader_web, StockLoader.Web.Endpoint,
  load_from_system_env: true,
  http: [port: {:system, "PORT"}],
  server: true,
  secret_key_base: "${SECRET_KEY_BASE}",
  url: [host: "${APP_NAME}.gigalixirapp.com", port: 443]
