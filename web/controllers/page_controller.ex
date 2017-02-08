defmodule Test.PageController do
  use Test.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", time: DateTime.utc_now()
  end
end
