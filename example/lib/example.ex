defmodule Example do
  use Application

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    IO.puts("This\nis\na\nmessage\n")
    IO.puts("After\n")
    IO.puts(?a)
  end
end

# RESULT

# This
# is
# a
# message

# After

# 97
