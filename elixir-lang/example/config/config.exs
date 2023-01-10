import Config

config :phoenix, :json_library, Poison

if Mix.env() == :dev do
  config :mix_test_watch,
    tasks: [
      "credo"
    ]
end
