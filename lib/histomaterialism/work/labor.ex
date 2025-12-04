defmodule Histomaterialism.Work.Labor do
  use Histomaterialism.Schema

  schema "labors" do
    field :amount, :integer, default: 1
    belongs_to :methodology, Histomaterialism.Work.Methodology
    belongs_to :profession, Histomaterialism.Work.Profession
  end
end
