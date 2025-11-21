defmodule Histomaterialism.Repo.Migrations.CreateProductions do
  use Ecto.Migration

  def change do
    create(table(:productions)) do
      add :job_id, references(:jobs), null: false
      add :factory_id, references(:factories), null: false
    end
    create(index(:productions, [:job_id, :factory_id]))
    create(index(:productions, [:factory_id]))
  end
end
