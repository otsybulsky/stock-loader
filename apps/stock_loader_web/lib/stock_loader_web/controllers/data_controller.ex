defmodule StockLoader.Web.DataController do
  use StockLoader.Web, :controller

  # Valid intervals: [1m, 2m, 5m, 15m, 30m, 60m, 90m, 1h, 1d, 5d, 1wk, 1mo, 3mo]

  def get_data(conn, %{"sym" => symbol, "interval" => interval}) do
    range =
      case interval do
        "1m" -> "3d"
        "5m" -> "14d"
        "1d" -> "3650d"
        _ -> "14d"
      end

    request =
      "https://query1.finance.yahoo.com/v8/finance/chart/#{symbol}?symbol=#{symbol}&range=#{range}&interval=#{
        interval
      }&includePrePost=true&events=div%7Csplit%7Cearn&lang=en-SG&region=SG&corsDomain=sg.finance.yahoo.com"

    responce = HTTPoison.get!(request)

    text(conn, responce.body)
  end
end
