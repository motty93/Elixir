list = [{:a, 1}, {:b, 2}]
IO.inspect(list == [a: 1, b: 2])

add_list = list ++ [c: 3]
IO.inspect(add_list)

IO.inspect([a: 0] ++ list)

list2 = [a: 1, b: 2]
IO.inspect(list2[:a])

# listとlist2は等価
IO.inspect(list == list2)
