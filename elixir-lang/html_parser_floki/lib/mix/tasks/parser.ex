defmodule Mix.Tasks.Parser do
  @moduledoc """
  The hello mix task: `mix help hello`
  """
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function."
  def run(_) do
    # This will start our application
    Mix.Task.run("app.start")
    # calling our Hello.say() function from earlier
    res = HtmlParserFloki.perform()
    IO.puts(res)
  end
end
