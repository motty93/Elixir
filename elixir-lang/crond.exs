# 複数条件で最初にマッチしたものを評価する
# crond

crond do
  2 + 2 === 5 ->
    IO.puts("This will not be true.")

  2 * 2 == 3 ->
    IO.puts("Nor this.")

  1 + 1 == 2 ->
    IO.puts("But this will.")
end
