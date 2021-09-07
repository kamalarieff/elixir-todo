defmodule TodoWeb.PageView do
  use TodoWeb, :view

  def render("index.json", %{pages: pages}) do
    %{data: render_many(pages, TodoWeb.PageView, "page.json")}
  end

  def render("page.json", %{page: page}) do
    %{title: page.title}
  end
end
