defmodule LogLately.Repo.Migrations.CreateUniqueConstraintOnCategories do
  use Ecto.Migration

  def change do
    create unique_index(:category, [:user_id, :name], name: :user_and_name_constraint)
  end
end
