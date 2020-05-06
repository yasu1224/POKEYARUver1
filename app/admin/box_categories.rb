ActiveAdmin.register BoxCategory do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :release_date, :box_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:release_date, :box_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :release_date
    column :box_name
    column '登録カード数' do |box_category|
      box_category.pokemon_cards.count
    end
    actions
  end
end
