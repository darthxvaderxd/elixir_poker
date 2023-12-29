defmodule PokerDeal do
  def shuffle_deck(cards) do
    Enum.shuffle(cards)
  end

  def deal_cards_to_players(cards, number_of_cards, players) do
    dealt_cards = Enum.take(cards, number_of_cards * players)

    get_player_cards = fn cards, number_of_cards, player_number, players ->
      Enum.map(0..number_of_cards - 1, fn index ->
        Enum.at(cards, (players * index) + player_number)
      end)
    end

    Enum.map(0..players - 1, fn player_number ->
      get_player_cards.(dealt_cards, number_of_cards, player_number, players)
    end)
  end

  def deal_flop(cards, players, number_of_cards) do
    cards
    |> Enum.drop((number_of_cards * players) + 1)
    |> Enum.take(3)
  end

  def deal_turn(cards, players, number_of_cards) do
    cards
    |> Enum.drop(number_of_cards * players + 5)
    |> Enum.take(1)
  end

  def deal_river(cards, players, number_of_cards) do
    cards
    |> Enum.drop(number_of_cards * players + 7)
    |> Enum.take(1)
  end
end