class CreatePokemonCards < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon_cards do |t|
      t.string :card_name
      t.string :image
      t.text :detail
      t.references :box_category, foreign_key: true
      t.references :genre_category, foreign_key: true
      t.references :sales_area, foreign_key: true
      t.references :card_rarity, foreign_key: true

      t.timestamps
    end
  end
end
