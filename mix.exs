defmodule CiExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :ci_example,
      description: "CI Example",
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Release and config
      {:distillery, "~> 2.1"},
      {:config_tuples, "~> 0.4.2"},
      # Clustering
      {:libcluster, "~> 3.3.0"},

      # Phoenix Framework
      {:phoenix, "~> 1.6.5"},
      {:phoenix_live_view, "~> 0.17"},
      {:phoenix_pubsub, "~> 2.0"},
      {:mime, "~> 2.0"},
      {:phoenix_ecto, "~> 4.4"},
      {:phoenix_live_dashboard, "~> 0.6"},
      {:phoenix_html, "~> 3.2.0"},
      {:phoenix_live_reload, "~> 1.2", only: [:dev]},

      # Telemetry
      {:telemetry_poller, "~> 0.5"},
      {:telemetry_metrics, "~> 0.6"},

      # Database
      {:ecto_sql, "~> 3.4", override: true},
      {:ecto_psql_extras, "~> 0.6"},
      {:postgrex, ">= 0.0.0"},

      # Support
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.1"},
      {:plug_cowboy, "~> 2.1"},
      {:httpoison, "~> 1.6"},
      {:floki, ">= 0.27.0", override: true},
      {:geolix_adapter_mmdb2, "~> 0.6.0"},
      {:ua_parser, "~> 1.8"},
      {:nimble_csv, "~> 1.1"},
      {:uuid, "~> 1.1"},
      {:esbuild, "~> 0.2", runtime: Mix.env() in [:dev]},
      {:dart_sass, "~> 0.3", runtime: Mix.env() in [:dev]},

      # GraphQL
      {:absinthe, "~> 1.5"},
      {:absinthe_plug, "~> 1.5"},
      {:absinthe_phoenix, "~> 2.0"},
      {:absinthe_error_payload, "~> 1.0"},
      {:dataloader, "~> 1.0"},

      # Authentication
      {:guardian, "~> 2.1"},
      {:guardian_db, "~> 2.0"},
      {:sans_password, "~> 1.1"},
      {:swoosh, "~> 1.6.0"},
      {:phoenix_swoosh, "~> 0.3.2"},
      {:qrcode, "~> 0.1"},
      {:ex_twilio, "~> 0.9.0"},
      {:cowboy, "~> 2.9", override: true},

      # API
      {:exconstructor, "~> 1.2.0"},
      {:tesla, "~> 1.4.3"},

      # Metrics
      {:appsignal, "~> 2.2.10"},
      {:appsignal_phoenix, "~> 2.0.13"},

      # Static code analysis
      {:credo, "~> 1.5", only: [:dev, :test]},
      {:sobelow, "~> 0.11.1", only: [:dev, :test]},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},

      # Testing
      {:excoveralls, "~> 0.14", only: :test},
      {:ex_machina, "~> 2.6", only: :test},
      {:faker, "~> 0.17.0"},
      {:mox, "~> 1.0.0", only: :test},
      {:mock, "~> 0.3.7", only: :test},
      {:assertions, "~> 0.10", only: :test},
      {:exvcr, "~> 0.13.2", only: :test},
      {:lcov_ex, "~> 0.2.0", only: [:dev, :test], runtime: false},
      {:mix_test_watch, "~> 1.1", only: [:dev, :test], runtime: false},

      # Formatting Forms
      {:number, "~> 1.0"},
      {:ex_phone_number, "~> 0.2.1"},

      # Calculations
      {:money, "~> 1.9.0"},
      {:decimal, "~> 2.0.0", override: true},
      {:statistics, "~> 0.6.2"},
      {:libgraph, "~> 0.13.3"},
      {:numerix, "~> 0.7",
       github: "safwank/Numerix", ref: "ca2abe476c91172d05488f8a7703545fc9563c6f"},
      {:flow, "~> 1.1.0"},

      # File uploads
      # elixir AWS (Amazon Web Service)
      # TODO: ex_aws 2.2 causes a dependency resolution failure with exjsx
      {:ex_aws, "~> 2.1"},

      # AWS s3 (Simple Storage Service) service package
      {:ex_aws_s3, "~> 2.0"},
      {:broadway, "~> 1.0"},
      {:ex_aws_sqs, "~> 3.2"},
      {:broadway_sqs, "~> 0.7"},

      # Jobs and Processing
      {:oban, "~> 2.8.0"},

      # Cross origin resource sharing plug. needed to deal with
      # the frontend calling doing fetch requests.
      {:cors_plug, "~> 2.0"},

      # iOS and Android push notifications.
      {:pigeon, "~> 1.5"},
      {:kadabra, "~> 0.6.0", override: true},

      # library to serialize structs to json for the api
      {:maru_entity, "~> 0.2.1"},

      # ImageMagick wrapper for editing images
      {:mogrify, "~> 0.9.0"},

      # URL unfurling
      {:furlex, github: "aai/furlex"},

      # timex includes tzdata for timezones
      {:timex, "~> 3.6"},

      # PDF Generation
      {:sneeze, "~> 1.2"},
      {:html_entities, "~> 0.5.2", override: true},

      # In memory key/value cache
      {:cachex, "~> 3.4"}
    ]
  end
end
