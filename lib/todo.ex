defmodule Todo do
  @moduledoc """
  Todo keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def measure_users do
    :telemetry.execute([:todo, :users], %{total: Todo.users_count()}, %{})
  end
end
