# 一文字ずつlist化
IO.inspect(String.codepoints("hello"))

IO.puts(is_list('hello'))

IO.puts(List.first('hello'))

# 以下二つの使い分け注意
IO.puts('hoge' ++ 'huga')
IO.puts("he" <> "llo")
