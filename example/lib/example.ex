defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    memberships = %{
      gold: 3,
      silver: 2,
      bronze: 1,
      none: 0
    }

    prices = %{
      gold: 25,
      silver: 20,
      bronze: 15,
      none: 0
    }


    users = [
      {"Caleb", memberships.gold},
      {"Kayla", memberships.gold},
      {"Carrie", memberships.silver}
    ]

    Enum.each(users, fn {name, membership} ->
      IO.puts("#{name} has a #{memberships} membership paying #{prices[membership]}.")
    end)
  end
end
