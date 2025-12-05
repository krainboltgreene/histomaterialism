defmodule Histomaterialism.Repo.Migrations.CreateWorkers do
  use Ecto.Migration

  def change do
    create(table(:workers)) do
      add :profession_id, references(:professions), null: false
      add :methodology_id, references(:methodologies), null: false
      add :amount, :integer, default: 1, null: false
    end
    create(index(:workers, [:profession_id, :methodology_id]))
    create(index(:workers, [:methodology_id]))
  end
end
