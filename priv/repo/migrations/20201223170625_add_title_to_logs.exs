defmodule LogLately.Repo.Migrations.AddTitleToLogs do
  use Ecto.Migration

  def change do
    alter table(:log) do
      add :title, :string
    end
  end
end
