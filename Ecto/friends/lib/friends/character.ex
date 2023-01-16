defmodule Friends.Character do
  @moduledoc false
  use Ecto.Schema

  schema "characters" do
    field(:name, :string)
    belongs_to(:movie, Friends.Movie)
  end
end
