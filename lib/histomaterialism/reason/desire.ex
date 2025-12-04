defmodule Histomaterialism.Reason.Desire do
  use Histomaterialism.Schema

  schema "desires" do
    field :name, :string
    field :tier, :integer
    field :category, :string
  end
end
