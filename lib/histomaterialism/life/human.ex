defmodule Histomaterialism.Life.Human do
  use Histomaterialism.Schema
  # has many ownerships

  schema "humans" do
    field :wealth, :integer, default: 0

    # Work should be it's own think Work has one Human and one labour
    # Humans have one job through work
    # belongs_to :work, Histomaterialism.Work.Factory
    belongs_to :home, Histomaterialism.Work.Factory
    belongs_to :culture, Histomaterialism.Reason.Culture
    belongs_to :religion, Histomaterialism.Reason.Religion
    # has_many :needs, Histomaterialism.Reason.Need
    # has_many :desires, Histomaterialism.Reason.Desire
  end
end
