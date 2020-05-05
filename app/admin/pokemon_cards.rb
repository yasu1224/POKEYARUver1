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
    f.inputs do
      f.input :box_category, :as => :select, :member_label => :box_name
      f.input :genre_category, :as => :select, :member_label => :genre
      f.input :sales_area, :as => :select, :member_label => :area
      f.input :card_rarity, :as => :select, :member_label => :rarity
      f.input :card_name
      f.input :image
      f.input :detail
    end
    f.actions
  end
end
