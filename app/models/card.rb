# frozen_string_literal: true

class Card < ApplicationRecord
  NAMES = %w[One Three King Knight Jack Seven Six Five Four Two].freeze
  SUITS = %w[coins cups clubs swords].freeze

  validates :name, inclusion: { in: NAMES }
  validates :suit, inclusion: { in: SUITS }
end
