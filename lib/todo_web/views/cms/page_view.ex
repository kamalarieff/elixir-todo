defmodule TodoWeb.CMS.PageView do
  use TodoWeb, :view

  alias Todo.CMS

  def author_name(%CMS.Page{author: author}) do
    author.user.name
  end
end
