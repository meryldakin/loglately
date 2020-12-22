defmodule LogLately.Categories do
  alias LogLately.Repo
  alias LogLately.Category

  def create(%{name: _name} = params) do
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
end
