class AddQuestionIdToSymbols < ActiveRecord::Migration
  def change
    add_column :symbols, :question_id, :integer, null: false
  end
end
