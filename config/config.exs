use Mix.Config

config :app,
  bot_name: ""

config :nadia,
  token: ""

import_config "#{Mix.env}.exs"

release :apps_a_and_b do
  set version: current_version(:app_a)
  set applications: [:app_a, :app_b]
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"some_long_string"
end
