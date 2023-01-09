defmodule User do
  @derive {Inspect, only: [:name]}
  # @derive {Inspect, except: [:age]}と同じ
  defstruct name: "motty", age: 31
end

defmodule Main do
  def perform do
    user = %User{name: "motty", age: 31}
    IO.inspect(inspect(user), label: "kernel inspect")
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
