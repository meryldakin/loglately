defmodule LogLately.Repo.Migrations.AddUserToCateogory do
  use Ecto.Migration

  def change do
    alter table(:category) do
      add :user_id, references(:user)
    end
  end
end
