# frozen_string_literal: true

class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.references :round, null: false, foreign_key: true
      t.references :game_player, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
