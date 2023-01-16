defmodule Friends.Person do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "people" do
    field :name, :string
    field :age, :integer, default: 0
  end

  # changesetでvalidation追加
  def changeset(struct, params) do
    struct
    |> cast(params, [:name, :age]) # changeset objectになる
    |> set_name_if_anonymous()
    |> validate_fictional_name()
  end

  def sign_up(params) do
    %Friends.Person{}
    |> Friends.Person.registration_changeset(params)
    |> Repo.insert()
  end

  # カスタムバリデーション
  @fictional_names ["Black Panther", "Wonder Woman", "Spiderman"]
  defp validate_fictional_name(changeset) do
    name = get_field(changeset, :name)

    if name in @fictional_names do
      changeset
    else
      add_error(changeset, :name, "is not a superhero")
    end
  end

  defp set_name_if_anonymous(changeset) do
    name = get_field(changeset, :name)

    if is_nil(name) do
      put_change(changeset, :name, "Anonymous")
    else
      changeset
    end
  end
end
