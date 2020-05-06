class SalesArea < ApplicationRecord
  has_many  :pokemon_cards
  has_many  :box_categories
end
