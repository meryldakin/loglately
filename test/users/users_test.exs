defmodule UsersTest do
  use ExUnit.Case
  use Plug.Test
  import LogLately.Factory
  alias User

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(LogLately.Repo)
    Ecto.Adapters.SQL.Sandbox.mode(LogLately.Repo, {:shared, self()})
    :ok
  end


  describe "#logs" do
    test "gets logs for a user" do
      user = insert(:user)
      IO.inspect(user)
    end
  end
end
