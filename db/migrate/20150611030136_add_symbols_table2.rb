class AddSymbolsTable2 < ActiveRecord::Migration
  def change
    create_table :symbols do |t|
      t.string :name, null: false
      t.float :left, null: false
      t.float :top, null: false
    end
  end
end
