add = fn a, b -> a + b end
add2 = &(&1 + &2)

IO.puts(add.(1, 2))
IO.inspect(add2.(1, 2), label: "＆省略記法")

IO.puts(is_function(add))

# 引数ck
IO.puts(is_function(add, 2))

double = fn a -> add.(a, a) end
double2 = &add2.(&1, &1)
IO.puts(double.(2))
IO.inspect(double2.(2), label: "＆省略記法")
