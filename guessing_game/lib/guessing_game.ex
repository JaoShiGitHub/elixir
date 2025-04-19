defmodule GuessingGame do
  use Application

  def start(_type, _args) do
    GuessingGame.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    correct = 8
    guess = IO.gets("Guessing a number between 0 and 10: ") |> String.trim()
    IO.puts("You guessed #{guess}, correct was #{correct}")
  end
end
