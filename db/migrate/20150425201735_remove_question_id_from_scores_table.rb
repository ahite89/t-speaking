class RemoveQuestionIdFromScoresTable < ActiveRecord::Migration
  def change
    remove_column :scores, :question_id, :integer, null: false
    add_column :scores, :question_id, :integer
  end
end
