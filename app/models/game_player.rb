# frozen_string_literal: true

class GamePlayer < ApplicationRecord
  belongs_to :game
  belongs_to :player, foreign_key: :user_id, class_name: 'User'
  has_many :rounds, through: :game
  has_many :moves

  validates :player, uniqueness: { scope: :game }
  validates :game, uniqueness: { scope: :player }

  def set_current_cards(card)
    self.current_cards = current_cards.blank? ? player_cards.reject { |c| c['id'] == card.id } : current_cards.reject { |c| c['id'] == card.id }
    save
  end
end
