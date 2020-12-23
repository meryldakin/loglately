defmodule LogLately.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias LogLately.Log

  schema "user" do
    field(:name, :string)
    field(:email, :string)
  end

  def find(user_id) do
    from(u in __MODULE__,
      where: u.id == ^user_id
    )
  end

  def get_logs(user_id) do
    from(l in Log,
      where: l.user_id == ^user_id,
      order_by: [desc: l.date]
    )
  end

  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:name, :email])
    |> validate_required([:name, :email])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
