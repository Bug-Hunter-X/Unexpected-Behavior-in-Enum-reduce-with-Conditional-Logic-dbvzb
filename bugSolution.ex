```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn x, acc ->
  if x > 3 do
    acc + x
  else
    acc  # Explicitly return the accumulator if the number is not greater than 3.
  end
end)
```