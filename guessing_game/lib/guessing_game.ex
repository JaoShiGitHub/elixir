defmodule GuessingGame do
  use Application

  def start(_type, _args) do
    GuessingGame.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    correct = :rand.uniform(11) - 1
    guess = IO.gets("Guessing a number between 0 and 10: ") |> String.trim()

    if String.to_integer(guess) == correct do
      IO.puts("YOU WIN!")
    else
      IO.puts("YOU LOSE T-T")
    end
  end
end
