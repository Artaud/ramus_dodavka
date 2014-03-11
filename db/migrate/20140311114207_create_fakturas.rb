class CreateFakturas < ActiveRecord::Migration
  def change
    create_table :fakturas do |t|
      t.integer :vypujcka_id
      t.integer :cislo
      t.date :datum
      t.integer :castka
      t.boolean :prijata
      t.boolean :vydana
      t.text :ucel

      t.timestamps
    end
  end
end
