defmodule ProdisEnum do
  def all?(list, fun \\ fn(x) -> x end)

  def all?([], _fun) do
    true
  end

  def all?([head | tail], fun) do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end

  def each([], _fun) do
    :ok
  end

  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def filter(list, fun) do
    _filter(list, fun, [])
  end

  defp _filter([], _fun, result) do
    result
  end

  defp _filter([head | tail], fun, result) do
    if (fun.(head)) do
      _filter(tail, fun, result ++ [head])
    else
      _filter(tail, fun, result)
    end
  end
end
