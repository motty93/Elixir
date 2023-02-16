defmodule Cards do
  @moduledoc """
    Provides methods for creating and handling a deck of cards.
  """

  def hello do
    "hi there!"
  end

  def create_hand(hand_size) do
    Cards.create_deck()
    |> Cards.shuffle()
    |> Cards.deal(hand_size) # 第一引数に入る
  end

  @doc """
    Returns a list of strings representing a deck of playing cards
  """
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

  @doc """
    Determines whether a deck contains a given card
  ## Examples

      iex> deck = Cards.create_deck
      ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
       "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
       "Four of Clubs", "Five of Clubs", "Ace of Hearts", "Two of Hearts",
       "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds",
       "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"]
      iex> Cards.contains?(deck, "Ace of Spades")
      true

  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck.
    The `hand_size` argument indicates how many cards shou8ld be in the hand.

  ## Examples

      iex> deck = Cards.create_deck
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]
  """
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
