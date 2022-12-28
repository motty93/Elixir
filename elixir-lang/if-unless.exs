if true do
  IO.puts("This works.")
end

unless true do
  IO.puts("This will never be seen.")
end

if nil do
  IO.puts("This won't be seen")
else
  IO.puts("This will.")
end

if true, do: IO.puts(1 + 2)
if false, do: IO.puts("this"), else: IO.puts("that")
