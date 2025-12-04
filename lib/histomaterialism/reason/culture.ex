defmodule Histomaterialism.Reason.Culture do
  use Histomaterialism.Schema

  schema "cultures" do
    field :name, :string
    field :tags, {:array, :string}, default: []
  end
end
