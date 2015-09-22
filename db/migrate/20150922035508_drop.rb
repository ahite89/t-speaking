class Drop < ActiveRecord::Migration
  def change
    drop_table :tags, force: :cascade
    drop_table :taggings, force: :cascade
    drop_table :chords, force: :cascade
  end
end
