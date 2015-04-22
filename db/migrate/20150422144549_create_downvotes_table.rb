class CreateDownvotesTable < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.integer :user_id, null: false
      t.integer :answer_id, null: false
    end
  end
end
