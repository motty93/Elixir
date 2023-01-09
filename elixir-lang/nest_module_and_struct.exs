# namespace
defmodule Example.Greetings do
  @greeting "Hello"

  def hello(name) do
    # ダブルクォートを表示
    ~s("#{@greeting} #{name}.")
  end

  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

IO.puts(Example.Greetings.morning("Motty"))
IO.puts(Example.Greetings.hello("Motty"))

defmodule Example.User do
  # TODO: なぜかできない
  defstruct name: "motty", roles: []

  def hello(name) do
    "Hello #{name}"
  end
end

# できない
# user = %Example.User{name: "motty"}
IO.puts(Example.User.hello("motty"))

defmodule User do
  defstruct name: "motty", age: 31, roles: []
end

user = %User{name: "motty"}
IO.inspect(user.name)
