defmodule LogLately.Repo.Migrations.AddTagsTable do
  use Ecto.Migration

  def change do
    create table("tag") do
      add :name, :string
    end
  end
end
