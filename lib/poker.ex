import Cards
import PokerDeal
import PokerHand

defmodule Poker do
  def get_player_results(player_cards, board) do
    Enum.map(player_cards, fn player_hand ->
      %{
        player_hand: player_hand,
        results: PokerHand.get_player_hand_value(player_hand, board)
      }
    end)
  end

  def run(number_of_players, number_of_cards) do
    deck = PokerDeal.shuffle_deck(Cards.get_cards())
    # deck = Cards.test_get_straight()
    flop  = PokerDeal.deal_flop(deck, number_of_cards, number_of_players)
    turn  = PokerDeal.deal_turn(deck, number_of_cards, number_of_players)
    river = PokerDeal.deal_river(deck, number_of_cards, number_of_players)

    %{
      flop: flop,
      turn: turn,
      river: river,
      results: get_player_results(PokerDeal.deal_cards_to_players(deck, number_of_cards, number_of_players), flop ++ turn ++ river),
    }
  end
end
