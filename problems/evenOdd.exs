defmodule EvenOdd do
  def evenOdd(num) do
    result = rem(num, 2)

    if result === 0 do
      IO.puts("even")
    else
      IO.puts("odd")
    end
  end 
end

IO.puts(MyMath.evenOdd(2))
