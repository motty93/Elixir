add = fn a, b -> a + b end

IO.puts(add.(1, 2))

IO.puts(is_function(add))

# 引数ck
IO.puts(is_function(add, 2))

double = fn a -> add.(a, a) end
IO.puts(double.(2))
