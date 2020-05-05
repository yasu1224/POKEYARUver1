class PokemonCard < ApplicationRecord
  belongs_to :box_category
  belongs_to :genre_category
  belongs_to :sales_area
  belongs_to :card_rarity
end
