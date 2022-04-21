defmodule FormTestWeb.PageController do
  use FormTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
