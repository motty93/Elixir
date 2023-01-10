import Integer

IO.inspect(for x <- 1..10, is_even(x), do: x)

# 偶数かつ3で割り切れるlist
list = for x <- 1..100, is_even(x), rem(x, 3) === 0, do: x
IO.inspect(list)

# :intoでlist意外のものを生成できる
# キーワードリストからマップを生成
map = for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}
IO.inspect(map)

# ビット文字列から文字列を生成
# ほとんど使わなそう
IO.inspect(for c <- [72, 101, 108, 108, 111], into: "", do: <<c>>)
