defmodule LogLately.Tag do
  use Ecto.Schema
  import Ecto.Changeset

  alias LogLately.Log
  alias LogLately.Category

  schema "tag" do
    field(:name, :string)
    belongs_to(:log, Log)
    belongs_to(:category, Category)
  end

  def changeset(params \\ %{}) do
    %__MODULE__{}
    |> cast(params, [:log, :name, :category])
    |> validate_required([:name, :log, :category])
    |> unique_constraint(:name)
  end
end
