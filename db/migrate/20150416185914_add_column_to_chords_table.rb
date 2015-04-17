class AddColumnToChordsTable < ActiveRecord::Migration
  def change
    add_column :chords, :category_id, :integer, null: false
  end
end
