defmodule StockLoader.Web.DataController do
  use StockLoader.Web, :controller

  def get_m1(conn, %{"sym" => symbol}) do
    IO.inspect(symbol)

    request =
      "https://query1.finance.yahoo.com/v8/finance/chart/#{symbol}?range=2d&includePrePost=true&interval=1m&corsDomain=finance.yahoo.com&.trsc=finance"

    responce = HTTPoison.get!(request)

    text(conn, responce.body)
  end
end
