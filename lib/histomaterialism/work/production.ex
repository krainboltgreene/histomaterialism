defmodule Histomaterialism.Work.Production do
  use Histomaterialism.Schema

  schema "productions" do
    belongs_to :methodology, Histomaterialism.Work.Methodology
    belongs_to :factory, Histomaterialism.Work.Factory
  end
end
