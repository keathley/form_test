defmodule FormTest.Repo do
  use Ecto.Repo,
    otp_app: :form_test,
    adapter: Ecto.Adapters.Postgres
end
