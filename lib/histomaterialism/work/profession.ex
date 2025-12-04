defmodule Histomaterialism.Work.Profession do
  use Histomaterialism.Schema

  schema "professions" do
    field :name, :string
    field :literacy, :integer, default: 0
  end
end
