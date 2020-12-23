defmodule LogLately.Category do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias LogLately.Log

  schema "category" do
    field(:name, :string)
    belongs_to(:user, User)
  end

  def find(id) do
    from(c in __MODULE__,
      where: c.id == ^id
    )
  end

  def all_for_user(user_id) do
    from(c in __MODULE__,
      where: c.user_id == ^user_id
    )
  end

  def get_logs(id) do
    from(l in Log,
      where: l.category_id == ^id
    )
  end

  def changeset(params \\ %{}) do
    %__MODULE__{}
    |> cast(params, [:name, :user_id])
    |> validate_required([:name, :user_id])
    |> unique_constraint(:user_and_name_constraint, name: :user_and_name_constraint)
  end
end
