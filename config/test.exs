import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :icndb_ex, IcndbEx.Repo,
  username: "postgres",
  password: "postgres",
  database: "icndb_ex_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :icndb_ex, IcndbExWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "0RzCIclntrJHNeVEA4HMLGZIjTHfto++9uvZpqyIbbInAhrmBY08XTyUavq1cQ7P",
  server: false

# In test we don't send emails.
config :icndb_ex, IcndbEx.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
