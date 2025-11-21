defmodule Histomaterialism.Repo.Migrations.CreateDependents do
  use Ecto.Migration

  def change do
    create(table(:dependents)) do
      add :human_id, references(:humans), null: false
      add :category, :citext, null: false
    end
    create(index(:dependents, [:category]))
    create(index(:dependents, [:human_id]))
  end
end
