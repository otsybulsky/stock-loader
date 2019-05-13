defmodule StockLoaderWeb.Router do
  use StockLoaderWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", StockLoaderWeb do
    pipe_through :api
  end
end
