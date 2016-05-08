# The head is the accumulator
defmodule MyList do
  def sum([]), do: 0
  def sum([head | []]), do: head

  def sum([h1 | [h2 | tail]]) do
    sum([h1 + h2 | tail])
  end
end
