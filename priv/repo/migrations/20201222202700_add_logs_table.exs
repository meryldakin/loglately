defmodule LogLately.Repo.Migrations.AddLogsTable do
  use Ecto.Migration

  def change do
    create table("log") do
      add :text, :string
      add :date, :utc_datetime
    end
  end
end
