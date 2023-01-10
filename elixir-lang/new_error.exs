defmodule ExampleError do
  defexception message: "an example error has occurred!"
end

defmodule Main do
  def perform do
    IO.inspect(%ExampleError{message: "an example error has occurred."})

    try do
      raise ExampleError
    rescue
      e in ExampleError -> e
    end
  end
end

Main.perform()
