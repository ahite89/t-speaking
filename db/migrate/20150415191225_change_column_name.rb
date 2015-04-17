class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :answers, :description, :content
  end
end
