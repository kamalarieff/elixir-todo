defmodule TodoWeb.PageController do
  use TodoWeb, :controller

  def index(conn, _params) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(201, "")
  end
end
