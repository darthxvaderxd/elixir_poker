defmodule PokerHand do
  def cards_same_suit(cards, suit, length) do
    case suit do
      true -> length(Enum.filter(cards, fn card -> card.suit == suit end)) >= 5
      false -> Enum.filter(Enum.group_by(cards, fn card -> card.suit end), fn {_, c} -> length(c) >= length end)
    end
  end

  def check_non_holdem_flush(player_hand, board) do
    player_card_suits = cards_same_suit(player_hand, false, 2)
    case player_card_suits do
      [] -> false
      _ -> cards_same_suit(player_hand ++ board, false, 5)
    end
  end

  def hand_is_flush(player_hand, board) do
    case length(player_hand) > 2 do
      true -> check_non_holdem_flush(player_hand, board)
      false -> cards_same_suit(player_hand ++ board, false, 5)
    end
  end

  # TODO: need to account for omaha style hand
  # TODO: we also need to account for low ace
  def check_card_order(cards) do
    Enum.reduce(cards, {0, 0}, fn card, {previous_card, count} ->
      case count >= 5 do
        true -> {previous_card, count}
        false ->
          case card.value == previous_card - 1 do
            true -> {card.value, count + 1}
            false -> {card.value, count}
          end
      end
    end)
  end

  def hand_is_straight(player_hand, board) do
    cards = Enum.reverse(Enum.sort_by(player_hand ++ board, fn card -> card.value end))
    { last_card, count } = check_card_order(cards)
    {count >= 5, last_card}
  end

  # TODO: need to account for omaha style hand
  def find_like_cards(player_hand, board) do
    Enum.group_by(player_hand ++ board, fn card -> card.label end)
  end

  def has_four_of_a_kind(player_hand, board) do
    Enum.filter(find_like_cards(player_hand, board), fn {_, c} -> length(c) == 4 end)
  end

  def has_three_of_a_kind(player_hand, board) do
    Enum.filter(find_like_cards(player_hand, board), fn {_, c} -> length(c) == 3 end)
  end

  def has_two_of_a_kind(player_hand, board) do
    Enum.filter(find_like_cards(player_hand, board), fn {_, c} -> length(c) == 2 end)
  end

  def get_player_hand_value(player_hand, board) do
    is_flush = hand_is_flush(player_hand, board)
    is_straight = hand_is_straight(player_hand, board)
    is_four_of_a_kind = has_four_of_a_kind(player_hand, board)
    is_three_of_a_kind = has_three_of_a_kind(player_hand, board)
    is_two_of_a_kind = has_two_of_a_kind(player_hand, board)
    is_two_pair = length(has_two_of_a_kind(player_hand, board)) >= 2
    %{
      is_flush: is_flush,
      is_straight: is_straight,
      is_four_of_a_kind: is_four_of_a_kind,
      is_three_of_a_kind: is_three_of_a_kind,
      is_two_pair: is_two_pair,
      is_two_of_a_kind: is_two_of_a_kind,
      cards: Enum.reverse(Enum.sort_by(player_hand ++ board, fn card -> card.value end)),
    }
   end
end