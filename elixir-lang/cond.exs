# 複数条件で最初にマッチしたものを評価する
# crond

cond do
  2 + 2 === 5 ->
    IO.puts("This will not be true.")

  2 * 2 == 3 ->
    IO.puts("Nor this.")

  1 + 1 == 2 ->
    IO.puts("But this will.")
end

cond do
  hd([1, 2, 3]) ->
    IO.puts("1 is considered as true.")
end

# マッチしなければエラーが発生する
cond do
  1 + 2 === 0 ->
    IO.puts("Incorrect")
  true ->
    IO.puts("Default")
end
