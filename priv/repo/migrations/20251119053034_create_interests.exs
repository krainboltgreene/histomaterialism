defmodule Histomaterialism.Repo.Migrations.CreateInterests do
  use Ecto.Migration

  def change do
    create(table(:interests)) do
      add :name, :text, null: false
      add :category, :citext, null: false
      add :tier, :integer, null: false
    end
    create(index(:interests, [:category]))
    create(index(:interests, [:tier]))
  end
end
