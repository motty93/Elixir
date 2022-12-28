IO.inspect({:ok, "hello"})

IO.puts(tuple_size({:ok, "hello"}))

tuple = {:ok, "hello"}
IO.puts(elem(tuple, 1))
IO.puts(tuple_size(tuple))
new_tuple = put_elem(tuple, 1, "world")
# 既存のtupleは破壊しない
IO.inspect(tuple, label: "tuple")
IO.inspect(new_tuple, label: "new tuple")
