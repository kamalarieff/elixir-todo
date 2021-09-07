defmodule TodoWeb.PageController do
  use TodoWeb, :controller

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> redirect(to: Routes.items_path(conn, :index))
  end
end
