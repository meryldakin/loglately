defmodule LogLately.Logs do
  alias LogLately.Repo
  alias LogLately.Log

  @spec create(%{category_id: any, date: any, text: any, user_id: any}) :: any
  def create(%{user_id: user_id, text: text, date: date} = params) do
    category = Map.get(params, :category_id, nil)

    Log.changeset(text, user_id, category, date)
    |> Repo.insert()
  end
end
