defmodule Greeter do
  def hello(name) do
    phrase() <> name
  end

  # doで一行書き
  def hello2(name), do: phrase() <> name

  # private function
  defp phrase, do: "Hello, "
end

IO.puts(Greeter.hello("motty"))
IO.puts(Greeter.hello2("motty"))

# 再帰探索
defmodule Length do
  def of([]), do: 0

  def of([_ | tail]), do: 1 + of(tail)
end

IO.puts(Length.of([]))
IO.puts(Length.of([1, 2, 3]))

# 同じメソッド名も引数が違う場合は複数定義可能
# 違うメソッドとして認識される
defmodule Greeter2 do
  # hello/0
  def hello(), do: "Hello, anonymous person!"

  # hello/1
  def hello(name), do: "Hello, " <> name

  # hello/2
  def hello(name, name2), do: "Hello, #{name} and #{name2}"
end

IO.puts(Greeter2.hello())
IO.puts(Greeter2.hello("motty"))
IO.puts(Greeter2.hello("motty", "runrun"))

# パターンマッチ引数
# rubyのオプション引数みたいな感じ
defmodule Greeter1 do
  def hello(%{name: person_name}) do
    IO.puts("Hello, " <> person_name)
  end
end

# nameがないと例外が発生する
motty = %{name: "motty", age: "95", favotite_color: "red"}
Greeter1.hello(motty)

