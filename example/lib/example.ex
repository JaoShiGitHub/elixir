defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    memberships = %{
      gold: :gold,
      silver: :silver,
      bronze: :bronze,
      none: :none
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
      IO.puts("#{name} has a #{membership} membership paying #{prices[membership]}.")
    end)
  end
end
