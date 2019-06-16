defmodule StockLoader.Web.Router do
  use StockLoader.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug(:fetch_session)
    plug(:put_secure_browser_headers)
  end

  scope "/", StockLoader.Web do
    pipe_through :browser

    get "/", PageController, :about
  end

  scope "/api", StockLoader.Web do
    pipe_through :api

    get "/data", DataController, :get_data
  end
end
