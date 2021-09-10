defmodule Todo.Blog.PostTest do
  use Todo.DataCase, async: true
  alias Todo.Blog.Post
  

  test "title must be at least two characters long" do
    changeset = Post.changeset(%User{}, %{title: "I"})
    assert %{title: ["should be at least 2 character(s)"]} = errors_on(changeset)
  end
end
