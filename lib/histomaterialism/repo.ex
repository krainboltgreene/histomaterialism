defmodule Histomaterialism.Repo do
  use Ecto.Repo,
    otp_app: :histomaterialism,
    adapter: Ecto.Adapters.Postgres
end
