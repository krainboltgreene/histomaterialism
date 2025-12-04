defmodule Histomaterialism.Repo.Migrations.CreateOutputs do
  use Ecto.Migration

  def change do
    create(table(:outputs)) do
      add :methodology_id, references(:methodologies), null: false
      add :good_id, references(:goods), null: false
      add :amount, :integer, default: 1, null: false
    end
    create(index(:outputs, [:methodology_id, :good_id]))
    create(index(:outputs, [:good_id]))
  end
end
