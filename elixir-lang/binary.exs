bin = <<0, 1, 2, 3>>
IO.inspect(bin)
IO.inspect(byte_size(bin), label: "byte size")

IO.inspect(String.valid?(bin))

IO.inspect(<<0,1>> <> <<2,3>>)
IO.inspect(<<0,1>> <> <<1,2>>)

# 内部的なバイナリを確かめる
IO.inspect("hello" <> <<0>>)

"he" <> rest = "hello"
IO.inspect(rest)
