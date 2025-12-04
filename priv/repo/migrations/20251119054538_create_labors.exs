defmodule Histomaterialism.Repo.Migrations.CreateLabors do
  use Ecto.Migration

  def change do
    create(table(:labors)) do
      add :profession_id, references(:professions), null: false
      add :methodology_id, references(:methodologies), null: false
      add :amount, :integer, default: 1, null: false
    end
    create(index(:labors, [:profession_id, :methodology_id]))
    create(index(:labors, [:methodology_id]))
  end
end
