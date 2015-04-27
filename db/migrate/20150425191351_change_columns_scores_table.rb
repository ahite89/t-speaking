class ChangeColumnsScoresTable < ActiveRecord::Migration
  def change
    remove_column :scores, :image, :string
    add_column :scores, :first_note, :string
    add_column :scores, :second_note, :string
  end
end
