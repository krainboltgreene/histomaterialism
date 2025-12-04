defmodule Histomaterialism.Reason.Religion do
  use Histomaterialism.Schema

  schema "religions" do
    field :name, :string
    field :tags, {:array, :string}, default: []
  end
end
