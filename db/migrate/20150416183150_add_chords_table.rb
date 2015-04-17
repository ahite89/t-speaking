class AddChordsTable < ActiveRecord::Migration
  def change
    create_table :chords do |t|
      t.string :name
    end
  end
end
