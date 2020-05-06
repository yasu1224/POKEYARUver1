ActiveAdmin.register PokemonCard do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :card_name, :image, :detail, :box_category_id, :genre_category_id, :sales_area_id, :card_rarity_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:card_name, :image, :detail, :box_category_id, :genre_category_id, :sales_area_id, :card_rarity_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs 'ポケモンカード登録'do
      f.input :box_category, :as => :select, :member_label => :box_name
      f.input :genre_category, :as => :select, :member_label => :genre
      f.input :sales_area, :as => :select, :member_label => :area
      f.input :card_rarity, :as => :select, :member_label => :rarity
      f.input :card_name
      f.input :image, :as => :file
      f.input :detail
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :image
    column :card_name
    column :detail
    column '拡張ボックス名' do |pokemon_card|
      pokemon_card.box_category.box_name
    end
    column 'ジャンル' do |pokemon_card|
      pokemon_card.genre_category.genre
    end
    column '発売地域' do |pokemon_card|
      pokemon_card.sales_area.area
    end
    column 'レアリティ' do |pokemon_card|
      pokemon_card.card_rarity.rarity
    end
    actions
  end

end
