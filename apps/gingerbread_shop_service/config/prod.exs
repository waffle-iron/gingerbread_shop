use Mix.Config

# Do not print debug messages in production
config :logger, level: :info

# Configure database
config :gingerbread_shop_service, GingerbreadShop.Service.Repo,
    adapter: Ecto.Adapters.Postgres,
    url: System.get_env("DATABASE_URL"),
    pool_size: 20,
    types: GingerbreadShop.Service.PostgresTypes
