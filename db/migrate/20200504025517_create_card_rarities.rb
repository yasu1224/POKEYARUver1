class CreateCardRarities < ActiveRecord::Migration[5.2]
  def change
    create_table :card_rarities do |t|
      t.string :rarity

      t.timestamps
    end
  end
end
