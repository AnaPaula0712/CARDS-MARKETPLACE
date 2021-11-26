class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.decimal :price, default: 0.0, null: false, precision: 6, scale: 2
      t.string :type
      # t.string :photo
      t.boolean :foil, default: false
      t.string :conservation_state
      t.string :color
      t.string :edition
      t.string :rarity
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
