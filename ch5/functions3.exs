fb = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fibu = fn (n) -> fb.(rem(n, 3), rem(n, 5), n) end

Enum.each 10..16, fn (n) ->
  IO.puts fibu.(n)
end
# Enum.each(10..16, &IO.puts(fibu.(&1)))
