class AddImageScores < ActiveRecord::Migration
  def change
    add_column :scores, :image, :string
  end
end
