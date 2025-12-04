defmodule Histomaterialism.Work.Input do
  use Histomaterialism.Schema

  schema "inputs" do
    field :amount, :integer, default: 1
    belongs_to :methodology, Histomaterialism.Work.Methodology
    belongs_to :good, Histomaterialism.Work.Good
  end
end
