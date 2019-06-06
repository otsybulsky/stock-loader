defmodule StockLoader.Web.Router do
  use StockLoader.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug(:fetch_session)
    plug(:put_secure_browser_headers)
  end

  scope "/api", StockLoader.Web do
    pipe_through :api

    get "/data", DataController, :get_data
  end
end
