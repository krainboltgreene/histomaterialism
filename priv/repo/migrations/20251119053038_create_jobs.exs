defmodule Histomaterialism.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create(table(:jobs)) do
      add :name, :text, null: false
    end
  end
end
