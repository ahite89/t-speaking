class DropTagsTables < ActiveRecord::Migration
  def change
    drop_table :tags, force: :cascade
    drop_table :taggings, force: :cascade
  end
end
