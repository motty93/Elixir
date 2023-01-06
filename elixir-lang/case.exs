case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    IO.puts("Will match")

  _ ->
    IO.puts("Would match, if guard condition were not satisfied")
end

x = 1

case 10 do
  # 既存の変数に対してマッチさせたい場合pin演算子を使用する
  ^x ->
    IO.puts("Won't match")

  _ ->
    IO.puts("Will match")
end

f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end

IO.puts(f.(1, 3))

# 無名関数の中で節は引数の数が同じでないといけない
# f2 = fn
#   x, y when x > 0 -> x + y
#   x, y, z -> x * y + z
# end
