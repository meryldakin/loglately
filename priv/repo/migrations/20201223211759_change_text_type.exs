defmodule LogLately.Repo.Migrations.ChangeTextType do
  use Ecto.Migration

  def change do
    alter table(:log) do
      modify :text, :text
    end
  end
end
