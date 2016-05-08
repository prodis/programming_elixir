defmodule MyList do
  def span(from, to), do: _span([], from, to)

  defp _span(list, from, to) when to < from, do: list
  defp _span(list, from, to), do: _span([to | list], from, to - 1)
end

# defmodule MyList do
#   def span(from, to) when from > to, do: []
#   def span(from, to), do: [from | span(from + 1, to)]
#   end
# end
