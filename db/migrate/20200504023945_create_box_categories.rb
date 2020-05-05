class CreateBoxCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :box_categories do |t|
      t.date :release_date
      t.string :box_name

      t.timestamps
    end
  end
end
