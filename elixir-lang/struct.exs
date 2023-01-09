defmodule User do
  defstruct name: "motty", age: 31
end

defmodule Main do
  def perform do
    user = %User{name: "motty", age: 31}
    IO.inspect(user.name, label: "name")
    IO.inspect(user.age, label: "age")
  end
end

# ダメ
# IO.inspect(%User{})
Main.perform()

# 無名関数もダメ
# hoge = fn name ->
#   user = %User{name: name}
#   IO.inspect(user.name, label: "name")
#   IO.inspect(user.age, label: "age")
# end
#
# hoge.("motty")
