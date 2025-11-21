defmodule Histomaterialism.Repo.Migrations.CreateNeeds do
  use Ecto.Migration

  def change do
    create(table(:needs)) do
      add :name, :text, null: false
      add :category, :citext, null: false
      add :tier, :integer, null: false
    end
    create(index(:needs, [:category]))
    create(index(:needs, [:tier]))
  end
end
