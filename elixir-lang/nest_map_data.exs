users = [
  john: %{name: "john", age: 23, languages: ["erlang", "Ruby", "JavaScript"]},
  mary: %{name: "mary", age: 23, languages: ["Ruby", "Java", "Go"]}
]

IO.inspect(users, label: "users")
IO.inspect(users[:john], label: "john")
IO.inspect(users[:john].name, label: "john name")
IO.inspect(users[:john].age, label: "john age")
IO.inspect(Enum.join(users[:john].languages, " "), label: "john languages")
IO.inspect(users[:john].languages |> Enum.join(" "), label: "john languages pipe operator")
