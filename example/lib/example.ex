defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
  time = Time.new!(16, 30, 0, 0)
  date = Date.new!(2025, 1, 1)
  date_time = DateTime.new!(date, time , "Etc/UTC")
  IO.inspect(date_time)
  IO.puts(date_time.year)
  end
end

# Use ! to tell Elixir that all we passed are correct and they can be trusted so don't throw errors
