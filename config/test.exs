import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_live_mem_leak_example, PhxLiveMemLeakExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "8Z2q0ti5Vqf1DwP2ZcHKb+uYIQeoyZNObzHMa513D9JuziG/VTXVZj0wbBcdRGrC",
  server: false

# In test we don't send emails.
config :phx_live_mem_leak_example, PhxLiveMemLeakExample.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
