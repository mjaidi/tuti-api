class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :suit
      t.integer :score

      t.timestamps
    end
  end
end
