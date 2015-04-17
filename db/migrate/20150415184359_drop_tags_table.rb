class DropTagsTable < ActiveRecord::Migration
  def change
    drop_table :tags, force: :cascade
  end
end
