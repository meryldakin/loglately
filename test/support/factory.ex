defmodule LogLately.Factory do
  alias LogLately.Repo
  alias LogLately.User

  def build(:user) do
    %User{
      name: "Meryl",
      email: "meryl@merylll.com"
    }
  end

  def build(factory_name, attributes) do
    factory_name |> build() |> struct(attributes)
  end

  def insert(factory_name, attributes \\ []) do
    factory_name |> build(attributes) |> Repo.insert()
  end
end
