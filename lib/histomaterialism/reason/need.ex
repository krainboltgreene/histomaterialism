defmodule Histomaterialism.Reason.Need do
  use Histomaterialism.Schema

  schema "needs" do
    field :name, :string
    field :tier, :integer
    field :category, :string
  end
end
