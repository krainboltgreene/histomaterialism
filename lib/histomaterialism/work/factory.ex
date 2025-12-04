defmodule Histomaterialism.Work.Factory do
  use Histomaterialism.Schema

  schema "factories" do
    field :name, :string
    field :category, :string
    field :tags, {:array, :string}, default: []
    # TODO: We might be able to skip this hop
    has_many(:productions, Histomaterialism.Work.Production)
    has_many(:methodologies, through: [:productions, :methodology])
  end
end
