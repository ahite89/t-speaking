class AddColumnToAnswersTable < ActiveRecord::Migration
  def change
    add_column :answers, :upvotes_count, :integer
    add_column :answers, :downvotes_count, :integer
  end
end
