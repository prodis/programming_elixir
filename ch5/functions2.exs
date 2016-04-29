fb = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

IO.puts fb.(0, 0, 0)
IO.puts fb.(0, 1, 2)
IO.puts fb.(1, 0, 1)
IO.puts fb.(1, 2, 3)
