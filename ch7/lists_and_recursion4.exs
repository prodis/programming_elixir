defmodule MyList do
  # Dave Thomas solution
  def span(from, to) when from > to,
    do: []

  def span(from, to),
    do: [from | span(from + 1, to)]

  # My (poor) solution
  # def span(from, to),
  #   do: _span([to], from)

  # defp _span(list = [head | _tail], from) when head == from,
  #   do: list

  # defp _span(list = [head | _tail], from),
  #   do: _span([head - 1 | list], from)
end
