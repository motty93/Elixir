[1, 2, true, 3]

IO.puts(length([1, 2, 3]))

ary = [1, 2, 3] ++ [4, 5, 6]
IO.inspect(ary)

IO.inspect([1, 2, true, false, true] -- [true, false, 1])

list = [1, 2, 3]
# どちらも空のlistには使用できない
# 最初の要素を取り出す
IO.inspect(hd(list), label: 'hd')
# 最初の要素以外をlistとして取り出す
IO.inspect(tl(list), label: 't')

IO.inspect([11, 12, 13])
