defmodule CardsTest do
  use ExUnit.Case
  doctest Cards # doc内のコードをテスト実行する

  test "greets the world" do
    assert Cards.hello() == "hi there!"
  end

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    # assert deck != Cards.shuffle(deck)
    # 否定のテスト
    refute deck == Cards.shuffle(deck)
  end
end
