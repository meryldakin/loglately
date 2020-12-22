defmodule LogLately.Repo do
  use Ecto.Repo,
    otp_app: :loglately,
    adapter: Ecto.Adapters.Postgres
end
