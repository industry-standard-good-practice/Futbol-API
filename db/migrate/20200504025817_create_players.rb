class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :height
      t.integer :weight
      t.integer :age
      t.string :country
      t.integer :shirt
      t.string :position

      t.timestamps
    end
  end
end
