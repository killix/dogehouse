use Mix.Config

config :logger, level: :info

config :kousa, Beef.Repo,
  database: "kousa_repo2",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :kousa,
  web_url: "http://localhost:3000",
  api_url: "http://localhost:4001",
  ben_github_id:
    System.get_env("BEN_GITHUB_ID") ||
      raise("""
      environment variable BEN_GITHUB_ID is missing.
      """),
  access_token_secret:
    System.get_env("ACCESS_TOKEN_SECRET") ||
      raise("""
      environment variable ACCESS_TOKEN_SECRET is missing.
      type some random characters to create one
      """),
  refresh_token_secret:
    System.get_env("REFRESH_TOKEN_SECRET") ||
      raise("""
      environment variable REFRESH_TOKEN_SECRET is missing.
      type some random characters to create one
      """),
  client_id:
    System.get_env("GITHUB_CLIENT_ID") ||
      raise("""
      environment variable GITHUB_CLIENT_ID is missing.
      Create an oauth application on GitHub to get one
      """),
  client_secret:
    System.get_env("GITHUB_CLIENT_SECRET") ||
      raise("""
      environment variable GITHUB_CLIENT_SECRET is missing.
      Create an oauth application on GitHub to get one
      """)

config :joken,
  access_token_secret: System.fetch_env!("ACCESS_TOKEN_SECRET"),
  refresh_token_secret: System.fetch_env!("REFRESH_TOKEN_SECRET")

config :extwitter, :oauth,
  consumer_key:
    System.get_env("TWITTER_API_KEY") ||
      raise("""
      environment variable TWITTER_API_KEY is missing.
      Create an oauth application on Twitter to get one
      """),
  consumer_secret:
    System.get_env("TWITTER_SECRET_KEY") ||
      raise("""
      environment variable TWITTER_SECRET_KEY is missing.
      Create an oauth application on Twitter to get one
      """),
  access_token:
    System.get_env("TWITTER_BEARER_TOKEN") ||
      raise("""
      environment variable TWITTER_BEARER_TOKEN is missing.
      Create an oauth application on Twitter to get one
      """),
  access_token_secret: ""
