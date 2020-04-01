# frozen_string_literal: true

class Move < ApplicationRecord
  belongs_to :round
  belongs_to :card
  belongs_to :game_player

  after_validation :update_player_cards, on: :create

  def update_player_cards
    game_player.set_current_cards(card)
  end
end
