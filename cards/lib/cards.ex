defmodule Cards do
  @moduledoc false

  def hello do
    "hi there!"
  end

  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size) # 第一引数に入る
  end

  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # cards =
    #   for value <- values do
    #     for suit <- suits do
    #       "#{value} of #{suit}"
    #     end
    #   end
    cards =
      for suit <- suits, value <- values do
        "#{value} of #{suit}"
      end

    cards |> List.flatten()
  end

  def shuffle(deck) do
    deck |> Enum.shuffle()
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    # tuple
    # 取得する際はパターンマッチを使用する
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    # {status, binary} = File.read(filename)
    case File.read(filename) do
      {:ok, binary} ->
        IO.puts(:ok)
        :erlang.binary_to_term(binary)

      {:error, _message} ->
        "That file does not exist."
    end
  end

  def test("hoge") do
    "hoge" |> IO.puts()
  end

  def test("fuga") do
    "fuga" |> IO.puts()
  end
end
