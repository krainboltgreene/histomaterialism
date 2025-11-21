import Config

config :histomaterialism,
  ecto_repos: [Histomaterialism.Repo]

config :histomaterialism, Histomaterialism.Repo,
  database: "histomaterialism",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
