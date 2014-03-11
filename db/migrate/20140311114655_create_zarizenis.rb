class CreateZarizenis < ActiveRecord::Migration
  def change
    create_table :zarizenis do |t|
      t.string :nazev
      t.integer :evidencni_cislo
      t.boolean :vypujceno

      t.timestamps
    end
  end
end
