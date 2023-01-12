import Config

config :friends, Friends.Repo,
  database: "friends_repo",
  username: "friends_repo",
  password: "friends_repo_psql",
  hostname: "localhost",
  port: "5555"

config :friends, ecto_repos: [Friends.Repo]

if Mix.env() == :dev do
  config :mix_test_watch,
    tasks: [
      "credo"
    ]
end
