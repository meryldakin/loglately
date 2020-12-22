# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :loglately,
  namespace: LogLately,
  ecto_repos: [LogLately.Repo]

# Configures the endpoint
config :loglately, LogLatelyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/QLuWJYD7KHoS1RnHrx1PDBPoGBrN874yk0PppMTgQAiNAbTL9Kyl8FYBG6Zdd1q",
  render_errors: [view: LogLatelyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LogLately.PubSub,
  live_view: [signing_salt: "B7wg9KPF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
