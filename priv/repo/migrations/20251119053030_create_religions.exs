defmodule Histomaterialism.Repo.Migrations.CreateReligions do
  use Ecto.Migration

  def change do
    create(table(:religions)) do
      add :name, :text, null: false
      add :tags, {:array, :citext}, null: false
    end
  end
end
