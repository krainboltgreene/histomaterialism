defmodule Histomaterialism.Repo.Migrations.CreateHumans do
  use Ecto.Migration

  def change do
    create(table(:humans)) do
      add :wealth, :bigint, default: 0, null: false
      add :culture_id, references(:cultures), null: false
      add :religion_id, references(:religions), null: false
      add :home_id, references(:factories)
      add :work_id, references(:factories)
    end

    create(index(:humans, [:wealth]))
    create(index(:humans, [:culture_id]))
    create(index(:humans, [:religion_id]))
    create(index(:humans, [:home_id], where: "home_id IS NOT NULL"))
    create(index(:humans, [:work_id], where: "work_id IS NOT NULL"))
  end
end
