class AddQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :score
      t.string :audio
      t.integer :user_id, null: false
      t.integer :category_id, null: false
    end
  end
end
