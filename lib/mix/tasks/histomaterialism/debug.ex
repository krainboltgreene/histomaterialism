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
              workers: [:profession],
              outputs: [:good],
              inputs: [:good]
            ]
          ]
        )
      )

    headers = ["Name", "Type", "Methodology", "Inputs", "Outputs", "Workers"]

    for factory <- factories do
      factory.methodologies
      |> Enum.map(fn methodology ->
        [
          factory.name,
          factory.category,
          methodology.name,
          Enum.map_join(methodology.inputs, " + ", fn input ->
            "#{input.amount} #{input.good.name}"
          end),
          Enum.map_join(methodology.outputs, " + ", fn output ->
            "#{output.amount} #{output.good.name}"
          end),
          Enum.map_join(methodology.workers, " + ", fn worker ->
            "#{worker.amount} #{worker.profession.name}"
          end)
        ]
      end)
    end
    |> Enum.concat()
    |> TableRex.quick_render!(headers, "Factories")
    |> IO.puts()
  end
end
