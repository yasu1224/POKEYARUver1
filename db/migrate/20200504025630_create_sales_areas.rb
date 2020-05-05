class CreateSalesAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_areas do |t|
      t.string :area

      t.timestamps
    end
  end
end
