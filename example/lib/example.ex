defmodule Example do
  use Application
  alias UUID

  def start(_type, _args) do
    #code
    IO.puts(UUID.uuid4())
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def hello do
    :word
  end
end
