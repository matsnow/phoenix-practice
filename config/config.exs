# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tokyoex_handson_demo,
  ecto_repos: [TokyoexHandsonDemo.Repo]

# Configures the endpoint
config :tokyoex_handson_demo, TokyoexHandsonDemo.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CpnnccymUelIbf42f/8OLqV+ZTuKVu5I0ZWHZVX8GxvJzjLlrb6OsuPLNC4YO723",
  render_errors: [view: TokyoexHandsonDemo.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TokyoexHandsonDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
