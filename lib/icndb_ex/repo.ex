defmodule IcndbEx.Repo do
  use Ecto.Repo,
    otp_app: :icndb_ex,
    adapter: Ecto.Adapters.Postgres
end
