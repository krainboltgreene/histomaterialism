defmodule Histomaterialism.Work.Good do
  use Histomaterialism.Schema

  schema "goods" do
    field :name, :string
    field :category, :string
  end
end
