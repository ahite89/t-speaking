class AddScoresTable < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :image
      t.integer :question_id, null: false
    end
  end
end
