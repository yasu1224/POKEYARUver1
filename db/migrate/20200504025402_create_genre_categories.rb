class CreateGenreCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_categories do |t|
      t.string :genre

      t.timestamps
    end
  end
end
