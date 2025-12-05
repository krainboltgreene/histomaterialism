defmodule Histomaterialism.Work.Worker do
  use Histomaterialism.Schema

  schema "workers" do
    field :amount, :integer, default: 1
    belongs_to :methodology, Histomaterialism.Work.Methodology
    belongs_to :profession, Histomaterialism.Work.Profession
  end
end
