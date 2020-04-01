# frozen_string_literal: true

class CreateGamePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :game_players do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :play_order
      t.jsonb :player_cards
      t.jsonb :current_cards

      t.timestamps
    end
  end
end
