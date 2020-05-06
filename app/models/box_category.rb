class BoxCategory < ApplicationRecord
  has_many  :pokemon_cards
  has_many  :sales_areas
end
