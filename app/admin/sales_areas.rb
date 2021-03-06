ActiveAdmin.register SalesArea do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :area
  #
  # or
  #
  # permit_params do
  #   permitted = [:area]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :area
    column '登録カード数' do |sales_area|
      sales_area.pokemon_cards.count
    end
  end
end
