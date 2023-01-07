defmodule Greeter do
  # ガード関数と組み合わせる場合はdefault引数のメソッドを最初に定義し、以下default引数を設定しない
  def hello(name, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names = Enum.join(names, ", ")

    hello(names, language_code)
  end

  ## default arguments \\
  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
end

# ガードを頼りに実行するメソッドを決定する
IO.puts(Greeter.hello(["motty", "runrun"]))
IO.puts(Greeter.hello("motty", "es"))
