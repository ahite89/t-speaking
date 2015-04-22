class RemoveColumnFromChordsTable < ActiveRecord::Migration
  def change
    remove_column :chords, :name, :string
  end
end
