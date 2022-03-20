defmodule IcndbExWeb.PageController do
  use IcndbExWeb, :controller
  alias Icndb

  def init(conn, params) do
    joke = Icndb.Service.get_joke(params)

    render(conn, "index.html", joke: joke)
  end
end
