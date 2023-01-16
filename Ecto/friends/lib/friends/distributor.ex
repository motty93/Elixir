defmodule Friends.Distributor do
  @moduledoc false
  use Ecto.Schema

  schema "distributors" do
    field(:name, :string)
    # distributor.movie
    belongs_to(:movie, Friends.Movie)
  end
end
