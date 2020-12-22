defmodule LogLately.Log do
  use Ecto.Schema
  import Ecto.Changeset

  alias LogLately.User
  alias LogLately.Category

  schema "log" do
    field(:text, :string)
    field(:date, :utc_datetime_usec)
    belongs_to(:user, User)
    belongs_to(:category, Category)
  end

  def changeset(text, user_id, category_id, date) do
    %__MODULE__{
      text: text,
      user_id: user_id,
      category_id: category_id,
      date: date
    }
    |> change(%{})
    |> validate_required([:text, :date, :user_id])
  end
end
