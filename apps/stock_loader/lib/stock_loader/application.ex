defmodule StockLoader.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      StockLoader.Repo
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: StockLoader.Supervisor)
  end
end
