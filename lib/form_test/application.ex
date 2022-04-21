defmodule FormTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      # Start the Telemetry supervisor
      FormTestWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: FormTest.PubSub},
      # Start the Endpoint (http/https)
      FormTestWeb.Endpoint
      # Start a worker by calling: FormTest.Worker.start_link(arg)
      # {FormTest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FormTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FormTestWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
