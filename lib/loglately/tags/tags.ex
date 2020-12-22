defmodule LogLately.Tags do
  alias LogLately.Tag
  alias LogLately.Repo

  def create(params) do
    Tag.changeset(params)
    |> Repo.insert()
  end
end
