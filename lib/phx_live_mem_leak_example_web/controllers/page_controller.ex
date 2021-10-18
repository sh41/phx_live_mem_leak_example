defmodule PhxLiveMemLeakExampleWeb.PageController do
  use PhxLiveMemLeakExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
