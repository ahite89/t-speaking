class RemoveValidationFromCategoriesTable < ActiveRecord::Migration
  def change
    remove_column :chords, :category_id, :integer, null: false
    add_column :chords, :category_id, :integer
  end
end
