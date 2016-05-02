defmodule Chop do
  def guess(actual, range = low..high) do
    current = div(low + high, 2)
    IO.puts "Is it #{current}"

    _guess(actual, range, current)
  end

  defp _guess(actual, _low..high, current) when current < actual,
    do: guess(actual, (current + 1)..high)

  defp _guess(actual, low.._high, current) when current > actual,
    do: guess(actual, low..(current - 1))

  defp _guess(actual, _, actual), do: actual
end
