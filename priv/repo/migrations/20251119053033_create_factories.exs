defmodule Histomaterialism.Repo.Migrations.CreateFactories do
  use Ecto.Migration

  def change do
    create(table(:factories)) do
      add :name, :text, null: false
      add :category, :citext, null: false
      add :tags, {:array, :citext}, null: false
    end
    create(index(:factories, [:category]))
  end
end
