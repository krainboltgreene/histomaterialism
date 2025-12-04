defmodule Histomaterialism.Life.Dependent do
  use Histomaterialism.Schema

  schema "dependents" do
    field :amount, :integer, default: 0
    belongs_to :human, Histomaterialism.Life.Human
  end
end
