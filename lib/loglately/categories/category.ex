defmodule LogLately.Category do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias LogLately.Log

  schema "category" do
    field(:name, :string)
  end

  def find(id) do
    from(c in __MODULE__,
      where: c.id == ^id
    )
  end

  def get_logs(id) do
    from(l in Log,
      where: l.category_id == ^id
    )
  end

  def changeset(params \\ %{}) do
    %__MODULE__{}
    |> cast(params, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
