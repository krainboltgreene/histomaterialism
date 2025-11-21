defmodule Histomaterialism.Repo.Migrations.CreateGoods do
  use Ecto.Migration

  def change do
    create(table(:goods)) do
      add :name, :text, null: false
      add :category, :citext, null: false
    end
    create(index(:goods, [:category]))
  end
end
