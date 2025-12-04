defmodule Histomaterialism.Repo.Migrations.CreateDesires do
  use Ecto.Migration

  def change do
    create(table(:desires)) do
      add :name, :text, null: false
      add :category, :citext, null: false
      add :tier, :integer, null: false
    end
    create(index(:desires, [:category]))
    create(index(:desires, [:tier]))
  end
end
