defmodule Anagram do
  def anagram?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  defp sort_string(str) do
    str
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end

IO.puts(Anagram.anagram?("Hello", "ohell"))
IO.puts(Anagram.anagram?("Maria", "iMara"))
