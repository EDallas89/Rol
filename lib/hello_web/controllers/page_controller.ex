defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  def dices(conn, _params) do
    render(conn, "dices.html", layout: {HelloWeb.LayoutView, "dices.html"})
  end
end
