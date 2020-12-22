defmodule LogLately.Users do
  alias LogLately.User
  alias LogLately.Repo

  def create(%{name: _name, email: _email} = params) do
    User.changeset(params)
    |> Repo.insert()
  end

  def find(id) do
    User.find(id)
    |> Repo.one()
  end

  def logs(user_id) do
    User.get_logs(user_id)
    |> Repo.all()
  end
end
