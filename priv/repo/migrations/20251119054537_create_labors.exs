defmodule Histomaterialism.Repo.Migrations.CreateLabors do
  use Ecto.Migration

  def change do
    create(table(:labors)) do
      add :profession_id, references(:professions), null: false
      add :job_id, references(:jobs), null: false
      add :amount, :integer, default: 1, null: false
    end
    create(index(:labors, [:profession_id, :job_id]))
    create(index(:labors, [:job_id]))
  end
end
