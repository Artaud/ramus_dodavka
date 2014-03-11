class CreateVypujckas < ActiveRecord::Migration
  def change
    create_table :vypujckas do |t|
      t.integer :zarizeni_id
      t.integer :najemce_id
      t.integer :faktura_id
      t.date :datumod
      t.date :datumdo
      t.boolean :platba_hotove
      t.boolean :platba_fakturou
      t.string :misto_predani
      t.integer :zaloha
      t.integer :cislo_smlouvy

      t.timestamps
    end
  end
end
