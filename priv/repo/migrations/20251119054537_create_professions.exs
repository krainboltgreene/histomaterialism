defmodule Histomaterialism.Repo.Migrations.CreateProfessions do
  use Ecto.Migration

  def change do
    create(table(:professions)) do
      add :name, :text, null: false
      add :literacy, :integer, default: 0, null: false
    end
  end
end
