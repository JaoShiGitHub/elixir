defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    memberships = {:bronze, :silver }
    memberships = Tuple.append(memberships, :gold)
    IO.inspect(memberships)

    prices = {5, 10, 15}
    avg = Tuple.sum(prices) / tuple_size(prices)
    IO.puts(avg)

    IO.puts("Average price from #{elem(memberships, 0)} #{elem(memberships, 1)} #{elem(memberships, 2)} is #{avg}")

    user1 = {"Caleb", :gold}
    user2 = {"Kayla", :gold}
    user3 = {"Carrie", :silver}

    {name, memberships} = user1
    IO.puts("#{name} has a #{memberships} membership.")
    {name, memberships} = user2
    IO.puts("#{name} has a #{memberships} membership.")
    {name, memberships} = user3
    IO.puts("#{name} has a #{memberships} membership.")
  end
end
