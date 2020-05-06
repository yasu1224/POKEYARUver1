ActiveAdmin.register CardRarity do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :rarity
  #
  # or
  #
  # permit_params do
  #   permitted = [:rarity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :rarity
    column '登録カード数' do |card_rarity|
      card_rarity.pokemon_cards.count
    end
  end
end
