map = %{:a => 1, 2 => :b}
IO.inspect(map)
IO.inspect(map[:a])
IO.inspect(map[2])

%{:a => a} = map
IO.inspect(a, label: 'aにmap[:a]を一致させる')
IO.puts("%{:c => c}はパターンマッチしないためエラー")

IO.puts("map[:a] = 100は不可,以下更新方法")
new_map = %{map | :a => 100}
IO.inspect(new_map, label: "keyにないものはこの方法が使えない")

put_new_map = Map.put(map, :a, 50)
IO.inspect(put_new_map, label: "Map#put")

IO.puts("keyがすべてatomの場合キーワード構文が使える")
IO.inspect(%{a: 1, b: 2})

IO.puts("mapのatomへのアクセス方法")
IO.inspect(map.a, label: "map.a")

colors = %{primary: "red", secondary: "blue"}
IO.puts(colors.primary)
IO.puts(colors.secondary)
second_color = colors.secondary
IO.puts(second_color)
%{primary: primary_color} = colors
IO.puts("パターンマッチでの変数代入のほうがElixirでは多そう")
IO.puts(primary_color)
