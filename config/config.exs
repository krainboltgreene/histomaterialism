import Config

config :histomaterialism,
  ecto_repos: [Histomaterialism.Repo]

config :histomaterialism, Histomaterialism.Repo,
  migration_primary_key: [name: :id, type: :binary_id],
  migration_foreign_key: [column: :id, type: :binary_id],
  migration_timestamps: [
    type: :utc_datetime
  ]

config :histomaterialism, Histomaterialism.Repo,
  database: "histomaterialism",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
