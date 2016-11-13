defmodule ProdisEnum do
  # all?
  def all?(list, fun \\ fn(x) -> x end)

  def all?([], _fun), do: true

  def all?([head | tail], fun) do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end

  # each
  def each([], _fun), do: :ok

  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  # filter
  def filter(list, fun) do
    _filter(list, fun, [])
  end

  defp _filter([], _fun, result), do: result

  defp _filter([head | tail], fun, result) do
    if (fun.(head)) do
      _filter(tail, fun, result ++ [head])
    else
      _filter(tail, fun, result)
    end
  end

  # split
  def split(list, 0) do
    {[], list}
  end

  def split(list, count) when length(list) <= count do
    {list, []}
  end

  def split([head | tail], count) do
    _split([head], tail, count)
  end

  defp _split(list1, list2, count) when length(list1) == count do
    {list1, list2}
  end

  defp _split(list, [head | tail], count) do
    _split(list ++ [head], tail, count)
  end

  # take
  def take(_list, 0), do: []

  def take(list, count) when length(list) <= count, do: list

  def take([head | tail], count) do
    _take([head], tail, count)
  end

  defp _take(list, _, count) when length(list) == count, do: list

  defp _take(list, [head | tail], count) do
    _take(list ++ [head], tail, count)
  end
end
