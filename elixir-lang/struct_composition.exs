# モジュールをaliasするよりも関数を取り込みたいときはimportを使用
import List, only: [last: 1] # Listのlast/1を取り込む(特定の関数を取り込む, exceptはそれ以外を取り込む)
import Integer, only: :functions # 関数のみ取り込む
import String, only: :macros # マクロのみ取り込む

defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}."
end

defmodule Example do
  # module名をエイリアスすることが可能
  # 頻繁に使われる
  # エイリアスの衝突を避ける場合はasオプションを使用する
  alias Sayings.Greetings, as: Hi
  alias Sayings.{Hoge, Fuga} # 複数一度にalias可能、ただしasは使えない

  def greeting(name), do: Hi.basic(name)
end

# aliasを使わない場合
# 階層を一つ下げて呼ぶことができる…という認識でおｋ
defmodule Example do
  # requireで関数ではなくマクロを使用可能にする
  # require SuperMacros
  #
  # SuperMacros.do_stuff
  def greeting(name), do: Sayings.Greetings.basic(name)
end

defmodule Hello do
  defmacro __using__(_opts) do
    quote do
      def hello(name), do: "Hi, #{name}."
    end
  end
end

defmodule Example2 do
  use Hello
end

IO.puts(Example2.hello("motty"))
