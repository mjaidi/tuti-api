# frozen_string_literal: true

class Game < ApplicationRecord
  NUMBER_PLAYERS = [2, 3, 4].freeze
  before_validation :set_deck, on: :create

  has_many :game_players
  has_many :rounds
  has_many :players, through: :game_players

  validates :number_players, inclusion: { in: NUMBER_PLAYERS }
  def set_deck
    self.number_players = 2 if number_players.nil?
    self.initial_deck = Card.all.map { |c| { id: c.id, name: c.name, suit: c.suit, score: c.score } }.shuffle
  end

  def start_game
    splitted_array = initial_deck.each_slice(40 / game_players.count).to_a
    game_players.each_with_index do |p, i|
      p.player_cards = splitted_array[i]
      p.save
    end
  end
end
