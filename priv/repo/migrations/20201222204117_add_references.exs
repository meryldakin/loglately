defmodule LogLately.Repo.Migrations.AddReferences do
  use Ecto.Migration

  def change do
    alter table(:tag) do
      add :log_id, references(:log)
      add :category_id, references(:category)
    end

    alter table(:log) do
      add :user_id, references(:user)
      add :category_id, references(:category)
    end
  end
end
