defmodule LogLately.Categories do
  alias LogLately.Repo
  alias LogLately.Category

  def create(params) do
    Category.changeset(params)
    |> Repo.insert()
  end

  def find(id) do
    Category.find(id)
    |> Repo.one()
  end

  def logs(id) do
    Category.get_logs(id)
    |> Repo.all()
  end

  def all_for_user(user_id) do
    Category.all_for_user(user_id)
    |> Repo.all()
  end
end
