defmodule Example do
  use Application

  @x 5

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    # x = 10
    IO.puts(@x)
  end
end
