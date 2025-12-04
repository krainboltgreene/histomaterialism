defmodule Histomaterialism.Repo.Migrations.CreateMethodologies do
  use Ecto.Migration

  def change do
    create(table(:methodologies)) do
      add :name, :text, null: false
    end
  end
end
