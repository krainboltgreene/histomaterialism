defmodule Histomaterialism.Population.Human do
  # field wealth, number
  # has many needs
  # has many ownerships
  # has one ethnicity
  # has one home
  # has one work
  # has many dependents
  defstruct wealth: nil,
            needs: [],
            interests: [],
            ownerships: [],
            ethnicity: nil,
            home: nil,
            work: nil,
            dependents: []
end
