defmodule LogLately.Logs do
  alias LogLately.Repo
  alias LogLately.Log

  def create(%{user_id: user_id, text: text, date: date} = params) do
    category = Map.get(params, :category_id, nil)
    title = Map.get(params, :title, nil)

    Log.changeset(text, title, user_id, category, date)
    |> Repo.insert()
  end

  def get(id) do
    Log.find(id)
    |> Repo.one()
  end
end
