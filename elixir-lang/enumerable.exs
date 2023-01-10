list = [1, 2, 3, 4, 5]
new_list = for x <- list, do: x * x
IO.inspect(new_list)

# キーワードリスト
IO.inspect(for {_key, val} <- [one: 1, two: 2, three: 3], do: val)

# マップ
IO.inspect(for {k, v} <- %{"a" => "A", "b" => "B"}, do: {k, v})

# バイナリ(文字列)
IO.inspect(for <<c <- "hello">>, do: <<c>>)

# match list
IO.inspect(for {:ok, val} <- [ok: "hello", error: "unknown", ok: "world"], do: val)

# 複数ジェネレータ
for n <- list, times <- 1..n do
  IO.puts("#{n} - #{times}")
end
