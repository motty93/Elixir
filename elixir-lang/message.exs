defmodule Example do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("World")
    end

    # 再帰で常に監視
    listen()
  end
end

pid = spawn(Example, :listen, [])
send(pid, {:ok, "hello"})

send(pid, :ok)
