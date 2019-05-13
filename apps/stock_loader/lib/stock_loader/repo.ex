defmodule StockLoader.Repo do
  use Ecto.Repo,
    otp_app: :stock_loader,
    adapter: Ecto.Adapters.Postgres
end
