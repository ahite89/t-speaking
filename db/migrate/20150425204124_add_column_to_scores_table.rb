class AddColumnToScoresTable < ActiveRecord::Migration
  def change
    add_column :scores, :image, :string
  end
end
