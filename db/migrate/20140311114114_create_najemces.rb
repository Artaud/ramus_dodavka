class CreateNajemces < ActiveRecord::Migration
  def change
    create_table :najemces do |t|
      t.integer :osoba_id
      t.string :nazevfirmy
      t.integer :ico
      t.integer :cislorp
      t.integer :cisloop

      t.timestamps
    end
  end
end
