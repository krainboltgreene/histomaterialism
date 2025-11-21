defmodule Histomaterialism.Repo.Migrations.CreateCultures do
  use Ecto.Migration

  def change do
    create(table(:cultures)) do
      add :name, :text, null: false
      add :tags, {:array, :citext}, null: false
    end
  end
end
