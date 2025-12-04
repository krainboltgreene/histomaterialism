_abrahamic =
  %Histomaterialism.Reason.Religion{
    name: "Abrahamic"
  }
  |> Histomaterialism.Repo.insert!()

_islam =
  %Histomaterialism.Reason.Religion{
    name: "Islam"
  }
  |> Histomaterialism.Repo.insert!()

_sufism =
  %Histomaterialism.Reason.Religion{
    name: "Sufism"
  }
  |> Histomaterialism.Repo.insert!()

mahdavism =
  %Histomaterialism.Reason.Religion{
    name: "Mahdavism"
  }
  |> Histomaterialism.Repo.insert!()

_indo_european =
  %Histomaterialism.Reason.Culture{
    name: "Indo-European"
  }
  |> Histomaterialism.Repo.insert!()

_germanic =
  %Histomaterialism.Reason.Culture{
    name: "Germanic"
  }
  |> Histomaterialism.Repo.insert!()

_west =
  %Histomaterialism.Reason.Culture{
    name: "West"
  }
  |> Histomaterialism.Repo.insert!()

_anglo_frisian =
  %Histomaterialism.Reason.Culture{
    name: "Anglo-Frisian"
  }
  |> Histomaterialism.Repo.insert!()

english =
  %Histomaterialism.Reason.Culture{
    name: "English"
  }
  |> Histomaterialism.Repo.insert!()

coal =
  %Histomaterialism.Work.Good{
    name: "Coal",
    category: "industrial"
  }
  |> Histomaterialism.Repo.insert!()

iron =
  %Histomaterialism.Work.Good{
    name: "Iron",
    category: "industrial"
  }
  |> Histomaterialism.Repo.insert!()

wood =
  %Histomaterialism.Work.Good{
    name: "Wood",
    category: "industrial"
  }
  |> Histomaterialism.Repo.insert!()

steel =
  %Histomaterialism.Work.Good{
    name: "Steel",
    category: "industrial"
  }
  |> Histomaterialism.Repo.insert!()

tool =
  %Histomaterialism.Work.Good{
    name: "Tool",
    category: "industrial"
  }
  |> Histomaterialism.Repo.insert!()

labourer =
  %Histomaterialism.Work.Profession{
    name: "Labourer",
    literacy: 10
  }
  |> Histomaterialism.Repo.insert!()

mechanist =
  %Histomaterialism.Work.Profession{
    name: "Mechanist",
    literacy: 60
  }
  |> Histomaterialism.Repo.insert!()

steel_beam =
  %Histomaterialism.Work.Methodology{
    name: "Steel Beam"
  }
  |> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Input{
  methodology_id: steel_beam.id,
  good_id: iron.id,
  amount: 10
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Input{
  methodology_id: steel_beam.id,
  good_id: coal.id,
  amount: 5
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Output{
  methodology_id: steel_beam.id,
  good_id: steel.id,
  amount: 1
}
|> Histomaterialism.Repo.insert!()

# TODO: Maybe rename to worker?
%Histomaterialism.Work.Labor{
  amount: 1000,
  methodology_id: steel_beam.id,
  profession_id: labourer.id
}
|> Histomaterialism.Repo.insert!()

steel_tool =
  %Histomaterialism.Work.Methodology{
    name: "Steel Tools"
  }
  |> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Input{
  methodology_id: steel_tool.id,
  good_id: steel.id,
  amount: 5
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Input{
  methodology_id: steel_tool.id,
  good_id: wood.id,
  amount: 50
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Output{
  methodology_id: steel_tool.id,
  good_id: tool.id,
  amount: 75
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Labor{
  amount: 500,
  methodology_id: steel_tool.id,
  profession_id: labourer.id
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Labor{
  amount: 250,
  methodology_id: steel_tool.id,
  profession_id: mechanist.id
}
|> Histomaterialism.Repo.insert!()

steel_mill =
  %Histomaterialism.Work.Factory{
    name: "Steel Mill",
    category: "urban"
  }
  |> Histomaterialism.Repo.insert!()

tool_workshop =
  %Histomaterialism.Work.Factory{
    name: "Tool Workshop",
    category: "urban"
  }
  |> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Production{
  methodology_id: steel_beam.id,
  factory_id: steel_mill.id
}
|> Histomaterialism.Repo.insert!()

%Histomaterialism.Work.Production{
  methodology_id: steel_tool.id,
  factory_id: tool_workshop.id
}
|> Histomaterialism.Repo.insert!()

mansion =
  %Histomaterialism.Work.Factory{
    name: "Mansion",
    category: "residential"
  }
  |> Histomaterialism.Repo.insert!()

john =
  %Histomaterialism.Life.Human{
    wealth: 10000,
    culture_id: english.id,
    religion_id: mahdavism.id,
    # work_id: tool_workshop.id,
    home_id: mansion.id
  }
  |> Histomaterialism.Repo.insert!()

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
