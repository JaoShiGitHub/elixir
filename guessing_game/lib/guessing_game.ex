defmodule GuessingGame do
  use Application

  def start(_type, _args) do
    GuessingGame.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    correct = :rand.uniform(11) - 1
    IO.puts(correct)
    guess = IO.gets("Guessing a number between 0 and 10: ") |> String.trim() |> Integer.parse()
    IO.inspect((guess))

    case guess do
      {result, _} ->
        IO.puts("parse successful #{result}")

     if result === correct do
       IO.puts("YOU WIN! :D")
     else
       IO.puts("YOU LOSE! T^T")
     end

      :error ->
         IO.puts("Something went wrong")
    end
  end
end
