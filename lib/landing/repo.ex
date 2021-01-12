defmodule Landing.Repo do
  use Ecto.Repo,
    otp_app: :landing,
    adapter: Ecto.Adapters.Postgres
end
