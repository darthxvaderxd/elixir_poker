defmodule Cards do
  def get_cards do
    [
      %{ label: "2", value: 2, suit: "clubs" },
      %{ label: "3", value: 3, suit: "clubs" },
      %{ label: "4", value: 4, suit: "clubs" },
      %{ label: "5", value: 5, suit: "clubs" },
      %{ label: "6", value: 6, suit: "clubs" },
      %{ label: "7", value: 7, suit: "clubs" },
      %{ label: "8", value: 8, suit: "clubs" },
      %{ label: "9", value: 9, suit: "clubs" },
      %{ label: "10", value: 10, suit: "clubs" },
      %{ label: "J", value: 11, suit: "clubs" },
      %{ label: "Q", value: 12, suit: "clubs" },
      %{ label: "K", value: 13, suit: "clubs" },
      %{ label: "A", value: 14, suit: "clubs" },
      %{ label: "2", value: 2, suit: "diamonds" },
      %{ label: "3", value: 3, suit: "diamonds" },
      %{ label: "4", value: 4, suit: "diamonds" },
      %{ label: "5", value: 5, suit: "diamonds" },
      %{ label: "6", value: 6, suit: "diamonds" },
      %{ label: "7", value: 7, suit: "diamonds" },
      %{ label: "8", value: 8, suit: "diamonds" },
      %{ label: "9", value: 9, suit: "diamonds" },
      %{ label: "10",value: 10, suit: "diamonds" },
      %{ label: "J", value: 11, suit: "diamonds" },
      %{ label: "Q", value: 12, suit: "diamonds" },
      %{ label: "K", value: 13, suit: "diamonds" },
      %{ label: "A", value: 14, suit: "diamonds" },
      %{ label: "2", value: 2, suit: "spades" },
      %{ label: "3", value: 3, suit: "spades" },
      %{ label: "4", value: 4, suit: "spades" },
      %{ label: "5", value: 5, suit: "spades" },
      %{ label: "6", value: 6, suit: "spades" },
      %{ label: "7", value: 7, suit: "spades" },
      %{ label: "8", value: 8, suit: "spades" },
      %{ label: "9", value: 9, suit: "spades" },
      %{ label: "10",value: 10, suit: "spades" },
      %{ label: "J", value: 11, suit: "spades" },
      %{ label: "Q", value: 12, suit: "spades" },
      %{ label: "K", value: 13, suit: "spades" },
      %{ label: "A", value: 14, suit: "spades" },
      %{ label: "2", value: 2, suit: "hearts" },
      %{ label: "3", value: 3, suit: "hearts" },
      %{ label: "4", value: 4, suit: "hearts" },
      %{ label: "5", value: 5, suit: "hearts" },
      %{ label: "6", value: 6, suit: "hearts" },
      %{ label: "7", value: 7, suit: "hearts" },
      %{ label: "8", value: 8, suit: "hearts" },
      %{ label: "9", value: 9, suit: "hearts" },
      %{ label: "10",value: 10, suit: "hearts" },
      %{ label: "J", value: 11, suit: "hearts" },
      %{ label: "Q", value: 12, suit: "hearts" },
      %{ label: "K", value: 13, suit: "hearts" },
      %{ label: "A", value: 14, suit: "hearts" },
    ]
  end

  def test_get_straight do
    [
      %{ label: "2", value: 2, suit: "clubs" },
      %{ label: "4", value: 4, suit: "diamonds" },
      %{ label: "3", value: 3, suit: "clubs" },
      %{ label: "8", value: 8, suit: "diamonds" },
      %{ label: "J", value: 11, suit: "diamonds" },
      %{ label: "4", value: 4, suit: "clubs" },
      %{ label: "5", value: 5, suit: "clubs" },
      %{ label: "6", value: 6, suit: "clubs" },
      %{ label: "K", value: 13, suit: "diamonds" },
      %{ label: "9", value: 9, suit: "spades" },
      %{ label: "A", value: 14, suit: "diamonds" },
      %{ label: "7", value: 7, suit: "clubs" },
      %{ label: "8", value: 8, suit: "clubs" },
      %{ label: "9", value: 9, suit: "clubs" },
      %{ label: "10", value: 10, suit: "clubs" },
      %{ label: "J", value: 11, suit: "clubs" },
      %{ label: "Q", value: 12, suit: "clubs" },
      %{ label: "K", value: 13, suit: "clubs" },
      %{ label: "A", value: 14, suit: "clubs" },
      %{ label: "2", value: 2, suit: "diamonds" },
      %{ label: "3", value: 3, suit: "diamonds" },
      %{ label: "5", value: 5, suit: "diamonds" },
      %{ label: "6", value: 6, suit: "diamonds" },
      %{ label: "7", value: 7, suit: "diamonds" },
      %{ label: "8", value: 8, suit: "diamonds" },
      %{ label: "9", value: 9, suit: "diamonds" },
      %{ label: "10",value: 10, suit: "diamonds" },
      %{ label: "J", value: 11, suit: "diamonds" },
      %{ label: "2", value: 2, suit: "spades" },
      %{ label: "3", value: 3, suit: "spades" },
      %{ label: "4", value: 4, suit: "spades" },
      %{ label: "5", value: 5, suit: "spades" },
      %{ label: "6", value: 6, suit: "spades" },
      %{ label: "7", value: 7, suit: "spades" },
      %{ label: "8", value: 8, suit: "spades" },
      %{ label: "10",value: 10, suit: "spades" },
      %{ label: "J", value: 11, suit: "spades" },
      %{ label: "Q", value: 12, suit: "spades" },
      %{ label: "K", value: 13, suit: "spades" },
      %{ label: "A", value: 14, suit: "spades" },
      %{ label: "2", value: 2, suit: "hearts" },
      %{ label: "3", value: 3, suit: "hearts" },
      %{ label: "4", value: 4, suit: "hearts" },
      %{ label: "5", value: 5, suit: "hearts" },
      %{ label: "6", value: 6, suit: "hearts" },
      %{ label: "7", value: 7, suit: "hearts" },
      %{ label: "8", value: 8, suit: "hearts" },
      %{ label: "9", value: 9, suit: "hearts" },
      %{ label: "10",value: 10, suit: "hearts" },
      %{ label: "J", value: 11, suit: "hearts" },
      %{ label: "Q", value: 12, suit: "hearts" },
      %{ label: "K", value: 13, suit: "hearts" },
      %{ label: "A", value: 14, suit: "hearts" },
    ]
  end
end