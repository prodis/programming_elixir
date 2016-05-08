defmodule MyList do
  def max([max]), do: max
  def max([max | [head | tail]]) when max >= head, do: max([max | tail])
  def max([_max | [head | tail]]), do: max([head | tail])
end
