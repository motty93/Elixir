defmodule MySigils do
  def sigil_u(string, []), do: String.upcase(string)
end

defmodule Main do
  import MySigils

  def perform do
    IO.puts(~u/elixir school/)
  end
end

Main.perform()
