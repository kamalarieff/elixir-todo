defmodule TodoWeb.ErrorViewTest do
  use TodoWeb.ConnCase, async: true

  @moduletag :error_view_case

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  @tag individual_test: "yup"
  test "renders 404.html" do
    assert render_to_string(TodoWeb.ErrorView, "404.html", []) == "Not Found"
  end

  @tag individual_test: "nope"
  test "renders 500.html" do
    assert render_to_string(TodoWeb.ErrorView, "500.html", []) == "Internal Server Error"
  end
end
