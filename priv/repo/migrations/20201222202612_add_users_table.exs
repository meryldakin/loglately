defmodule LogLately.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table("user") do
      add :name, :string
      add :email, :string
    end
  end
end
