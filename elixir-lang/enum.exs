IO.puts("Enum#all?")
IO.puts(Enum.all?(["foo", "bar", "hello"], fn s -> String.length(s) == 3 end))
IO.puts(Enum.all?(["foo", "bar", "hello"], fn s -> String.length(s) > 2 end))

IO.puts("Enum#any?")
IO.puts(Enum.any?(["foo", "bar", "hello"], fn s -> String.length(s) == 3 end))
IO.puts(Enum.any?(["foo", "bar", "hello"], fn s -> String.length(s) > 2 end))
IO.puts(["foo", "bar", "hello"] |> Enum.any?(fn s -> String.length(s) > 2 end))

IO.puts("Enum#chunk_every")
IO.inspect(Enum.chunk_every([1, 2, 3, 4, 5, 6], 2))
IO.inspect([1, 2, 3, 4, 5, 6] |> Enum.chunk_every(3))

IO.puts("Enum#chunk_by")

IO.inspect(["one", "two", "three", "four", "five"] |> Enum.chunk_by(fn x -> String.length(x) end),
  label: "特定の条件でコレクションを分類"
)

IO.puts("Enum#map_every")

IO.inspect([1, 2, 3, 4, 5, 6, 7, 8] |> Enum.map_every(3, fn x -> x + 1000 end),
  label: "最初に適用してから３つ毎に同様の処理"
)

IO.puts("Enum#each")
IO.inspect(["one", "two", "three"] |> Enum.each(fn x -> IO.puts(x) end), label: "最後は:okを返す")

IO.puts("Enum#map")
new_map = [0, 1, 2, 3, 4] |> Enum.map(fn x -> x - 1 end)
IO.inspect(new_map)

IO.puts("Enum#min")
IO.puts([5, 3, 1, 8, 0, -4] |> Enum.min())

IO.puts("Enum#filter")
filter_map = [1, 2, 3, 4] |> Enum.filter(fn x -> rem(x, 2) == 0 end)
IO.inspect(filter_map)

IO.puts("Enum#reduce")
IO.inspect([1, 2, 3] |> Enum.reduce(fn x, acc -> x + acc end), label: "初期値無し")
IO.inspect([1, 2, 3] |> Enum.reduce(&(&1 + &2)), label: "初期値無し,キャプチャ演算子")
IO.inspect([1, 2, 3] |> Enum.reduce(10, fn x, acc -> x + acc end), label: "初期値10")

IO.inspect(["a", "b", "c"] |> Enum.reduce("1", fn x, acc -> x <> acc end),
  label: "文字列１の頭に順に追加していく"
)

IO.puts("キャプチャ演算子＆")
IO.inspect([1, 2, 3] |> Enum.map(fn n -> n + 3 end))
IO.inspect([1, 2, 3] |> Enum.map(&(&1 + 3)))

IO.puts("defmodule")

defmodule Adding do
  def plus_three(num), do: num + 3
end

IO.inspect([1, 2, 3] |> Enum.map(&Adding.plus_three(&1)))
IO.inspect([1, 2, 3] |> Enum.map(&Adding.plus_three/1), label: "キャプチャを明示しない")
