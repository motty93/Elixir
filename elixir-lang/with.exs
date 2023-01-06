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
