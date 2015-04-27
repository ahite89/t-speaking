class AddTagsColumnToQuestionsTable < ActiveRecord::Migration
  def change
    add_column :questions, :tags, :string
  end
end
