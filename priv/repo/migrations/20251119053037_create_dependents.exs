defmodule Histomaterialism.Repo.Migrations.CreateDependents do
  use Ecto.Migration

  def change do
    create(table(:dependents)) do
      add :human_id, references(:humans), null: false
      add :amount, :integer, null: false, default: 0
    end
    create(index(:dependents, [:human_id]))
  end
end
