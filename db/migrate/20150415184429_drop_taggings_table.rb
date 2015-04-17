class DropTaggingsTable < ActiveRecord::Migration
  def change
    drop_table :taggings, force: :cascade
  end
end
