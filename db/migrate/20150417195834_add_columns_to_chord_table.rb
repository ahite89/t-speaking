class AddColumnsToChordTable < ActiveRecord::Migration
  def change
    add_column :chords, :first_chord, :string
    add_column :chords, :first_chord_probability, :float
  end
end
