defmodule Example do
  use Application

  def start(_type, _args) do
    #code
    IO.puts(Example.hello())
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def hello do
    :word
  end
end
