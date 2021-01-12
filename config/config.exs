# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :landing,
  ecto_repos: [Landing.Repo]

# Configures the endpoint
config :landing, LandingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qs5rayQL3WFvBFOYV06rJjrGIHY9czlQROZSnLK+ai0mcUVW3RonBXgK621/O+GB",
  render_errors: [view: LandingWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: Landing.PubSub,
  live_view: [signing_salt: "EDj39ZA9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
