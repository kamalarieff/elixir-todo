defmodule TodoWeb.PageController do
  use TodoWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: Routes.items_path(conn, :index))
  end
end
