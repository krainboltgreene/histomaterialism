defmodule Histomaterialism.Work.Methodology do
  use Histomaterialism.Schema

  schema "methodologies" do
    field :name, :string
    has_many :productions, Histomaterialism.Work.Production
    has_many :outputs, Histomaterialism.Work.Output
    has_many :inputs, Histomaterialism.Work.Input
    has_many :workers, Histomaterialism.Work.Worker
  end
end
