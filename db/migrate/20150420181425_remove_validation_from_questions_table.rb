class RemoveValidationFromQuestionsTable < ActiveRecord::Migration
  def change
    remove_column :questions, :category_id, :integer, null: false
    add_column :questions, :category_id, :integer
  end
end
