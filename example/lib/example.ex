defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    name = "Caleb"
    status = Enum.random([:gold, :silver, :bronze, :"not a member"])

    case status do
      :gold -> IO.puts("Welcome to the fancy lounge, #{name}")
      :"not a member" -> IO.puts("Get Subscribed")
      _ -> IO.puts("Get out bruh")
    end
  end
end
