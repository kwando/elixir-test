defmodule Test.HelloController do
  use Test.Web, :controller

  def index(conn, _params) do
    conn
      |> Awesome.pass()
      |> json(current_user())
  end

  def current_user do
    %User{
        id: :rand.uniform(10_000_000),
        name: "Hannes Nevalainen",
        time: DateTime.utc_now()
    }
  end
end
