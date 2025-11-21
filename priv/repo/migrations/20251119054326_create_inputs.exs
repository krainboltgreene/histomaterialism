defmodule Histomaterialism.Repo.Migrations.CreateInputs do
  use Ecto.Migration

  def change do
    create(table(:inputs)) do
      add :job_id, references(:jobs), null: false
      add :good_id, references(:goods), null: false
      add :amount, :integer, default: 1, null: false
    end
    create(index(:inputs, [:job_id, :good_id]))
    create(index(:inputs, [:good_id]))
  end
end
