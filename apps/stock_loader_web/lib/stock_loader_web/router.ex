defmodule StockLoader.Web.Router do
  use StockLoader.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", StockLoader.Web do
    pipe_through :api

    get "/data-m1", DataController, :get_m1
  end
end
