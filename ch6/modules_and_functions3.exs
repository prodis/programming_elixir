defmodule Times do
  def double(n),    do: multiply(n, 2)
  def triple(n),    do: multiply(n, 3)
  def quadruple(n), do: multiply(n, 4)

  defp multiply(n, multiplier), do: n * multiplier
end
