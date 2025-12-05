defmodule Seed do
  def create_religion(name) do
    %Histomaterialism.Reason.Religion{
      name: name
    }
    |> Histomaterialism.Repo.insert!()
  end

  def create_culture(name) do
    %Histomaterialism.Reason.Culture{
      name: name
    }
    |> Histomaterialism.Repo.insert!()
  end

  def create_good(name, category) do
    %Histomaterialism.Work.Good{
      name: name,
      category: category
    }
    |> Histomaterialism.Repo.insert!()
  end

  def create_profession(name, literacy) do
    %Histomaterialism.Work.Profession{
      name: name,
      literacy: literacy
    }
    |> Histomaterialism.Repo.insert!()
  end

  def create_methodology(name, inputs, outputs, workers) do
    methodology =
      %Histomaterialism.Work.Methodology{
        name: name
      }
      |> Histomaterialism.Repo.insert!()

    for {good, amount} <- inputs do
      %Histomaterialism.Work.Input{
        methodology_id: methodology.id,
        good_id: good.id,
        amount: amount
      }
      |> Histomaterialism.Repo.insert!()
    end

    for {good, amount} <- outputs do
      %Histomaterialism.Work.Output{
        methodology_id: methodology.id,
        good_id: good.id,
        amount: amount
      }
      |> Histomaterialism.Repo.insert!()
    end

    for {profession, amount} <- workers do
      %Histomaterialism.Work.Worker{
        methodology_id: methodology.id,
        profession_id: profession.id,
        amount: amount
      }
      |> Histomaterialism.Repo.insert!()
    end

    methodology
  end

  def create_factory(name, category, productions) do
    factory =
      %Histomaterialism.Work.Factory{
        name: name,
        category: category
      }
      |> Histomaterialism.Repo.insert!()

    for methodology <- productions do
      %Histomaterialism.Work.Production{
        methodology_id: methodology.id,
        factory_id: factory.id
      }
      |> Histomaterialism.Repo.insert!()
    end

    factory
  end

  def create_human(wealth, culture, religion, dependents) do
    human =
      %Histomaterialism.Life.Human{
        wealth: wealth,
        culture_id: culture.id,
        religion_id: religion.id
        # work_id: tool_workshop.id,
        # home_id: home.id
      }
      |> Histomaterialism.Repo.insert!()

    %Histomaterialism.Life.Dependent{
      human_id: human.id,
      amount: dependents
    }
    |> Histomaterialism.Repo.insert!()

    human
  end
end

_abrahamic = Seed.create_religion("Abrahamic")

_islam = Seed.create_religion("Islam")

_sufism = Seed.create_religion("Sufism")

mahdavism = Seed.create_religion("Mahdavism")

_indo_european = Seed.create_culture("Indo-European")

_germanic = Seed.create_culture("Germanic")

_west = Seed.create_culture("West")

_anglo_frisian = Seed.create_culture("Anglo-Frisian")

english = Seed.create_culture("English")

coal = Seed.create_good("Coal", "industrial")

iron = Seed.create_good("Iron", "industrial")

wood = Seed.create_good("Wood", "industrial")

steel = Seed.create_good("Steel", "industrial")

tool = Seed.create_good("Tool", "industrial")

sleep = Seed.create_good("Sleep", "personal")

bed = Seed.create_good("Furniture", "residential")

labourer = Seed.create_profession("Labourer", 10)

mechanist = Seed.create_profession("Mechanist", 40)

steel_beam =
  Seed.create_methodology(
    "Steel Beam",
    [
      {iron, 10},
      {coal, 5}
    ],
    [
      {steel, 1}
    ],
    [
      {labourer, 1000}
    ]
  )

steel_tool =
  Seed.create_methodology(
    "Steel Tools",
    [
      {steel, 5},
      {wood, 50}
    ],
    [
      {tool, 75}
    ],
    [
      {labourer, 500},
      {mechanist, 500}
    ]
  )

steel_mill =
  Seed.create_factory("Steel Mill", "urban", [
    steel_beam
  ])

tool_workshop =
  Seed.create_factory("Tool Workshop", "urban", [
    steel_tool
  ])

# mansion = Seed.create_factory("Mansion", "residential", [])

john = Seed.create_human(10000, english, mahdavism, 4)

_family =
  %Histomaterialism.Life.Dependent{
    human_id: john.id,
    amount: 4
  }
  |> Histomaterialism.Repo.insert!()

_food =
  %Histomaterialism.Reason.Need{
    name: "Food",
    tier: 0,
    category: "sustenance"
  }
  |> Histomaterialism.Repo.insert!()

_power =
  %Histomaterialism.Reason.Desire{
    name: "Power",
    tier: 3,
    category: "fufillment"
  }
  |> Histomaterialism.Repo.insert!()
