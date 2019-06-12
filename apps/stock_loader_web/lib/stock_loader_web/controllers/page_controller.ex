defmodule StockLoader.Web.PageController do
  use StockLoader.Web, :controller

  def about(conn, _params) do
    render(conn, "about.html")
  end
end
