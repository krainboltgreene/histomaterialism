defmodule Mix.Tasks.Histomaterialism.Debug do
  @moduledoc false
  use Mix.Task

  import Ecto.Query

  @impl Mix.Task
  def run(_args) do
    Mix.Task.run("app.start")

    factories =
      Histomaterialism.Repo.all(
        from(
          Histomaterialism.Work.Factory,
          preload: [
            methodologies: [
              labors: [:profession],
              outputs: [:good],
              inputs: [:good]
            ]
          ]
        )
      )

    for factory <- factories do
      title = factory.name
      headers = ["Methodology", "Inputs", "Outputs", "Labors"]

      factory.methodologies
      |> Enum.map(fn methodology ->
        [
          methodology.name,
          Enum.map_join(methodology.inputs, " + ", fn x -> "#{x.amount} #{x.good.name}" end),
          Enum.map_join(methodology.outputs, " + ", fn x -> "#{x.amount} #{x.good.name}" end),
          Enum.map_join(methodology.labors, " + ", fn y -> "#{y.amount} #{y.profession.name}" end)
        ]
      end)
      |> TableRex.quick_render!(headers, title)
      |> IO.puts()
    end
  end
end
