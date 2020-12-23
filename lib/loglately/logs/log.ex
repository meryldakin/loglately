defmodule LogLately.Log do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  alias LogLately.User
  alias LogLately.Category

  schema "log" do
    field(:text, :string)
    field(:title, :string)
    field(:date, :utc_datetime_usec)
    belongs_to(:user, User)
    belongs_to(:category, Category)
  end

  def find(id) do
    from(l in __MODULE__,
      where: l.id == ^id
    )
  end

  def changeset(text, title, user_id, category_id, date) do
    %__MODULE__{
      text: text,
      title: title,
      user_id: user_id,
      category_id: category_id,
      date: date
    }
    |> change(%{})
    |> validate_required([:text, :date, :user_id])
  end
end
