defmodule Friends.Actor do
  @moduledoc false
  use Ecto.Schema

  schema "actors" do
    field(:name, :string)
    many_to_many(:movies, Friends.Movie, join_through: "movies_actors")
  end
end
