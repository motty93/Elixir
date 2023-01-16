defmodule Friends.Movie do
  @moduledoc false
  use Ecto.Schema

  schema "movies" do
    field(:title, :string)
    field(:tagline, :string)
    has_many(:characters, Friends.Character)
    has_one(:distributor, Friends.Distributor)
  end
end
