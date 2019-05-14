defmodule StockLoader.Web.DataController do
  use StockLoader.Web, :controller

  def get_m1(conn, %{"sym" => symbol}) do
    request =
      "https://query1.finance.yahoo.com/v8/finance/chart/#{symbol}?symbol=#{symbol}&range=3d&interval=1m&includePrePost=true&events=div%7Csplit%7Cearn&lang=en-SG&region=SG&corsDomain=sg.finance.yahoo.com"

    responce = HTTPoison.get!(request)

    text(conn, responce.body)
  end
end
