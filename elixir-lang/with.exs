import Integer

user = %{first: "Sean", last: "Callen"}
user2 = %{first: "motty"}

result =
  with {:ok, first} <- Map.fetch(user, :first),
       {:ok, last} <- Map.fetch(user, :last),
       do: IO.puts(last <> ", " <> first)

IO.puts(result)

result2 =
  with {:ok, first} <- Map.fetch(user2, :first),
       {:ok, last} <- Map.fetch(user2, :last),
       do: IO.puts(last <> ", " <> first)

IO.puts(result2)

m = %{a: 1, c: 3}

a =
  with {:ok, number} <- Map.fetch(m, :a),
       true <- is_even(number) do
    IO.puts("#{number} devided by 2 is #{div(number, 2)}")
    :even
  else
    :error ->
      IO.puts("We don't have othis item in map")
      :error

    _ ->
      IO.puts("It is odd")
      :odd
  end

IO.puts(a)
