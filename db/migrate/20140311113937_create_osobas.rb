class CreateOsobas < ActiveRecord::Migration
  def change
    create_table :osobas do |t|
      t.string :jmeno
      t.string :prijmeni
      t.integer :telefon
      t.string :ulice
      t.integer :cislodomu
      t.integer :smerovacicislo
      t.string :mesto

      t.timestamps
    end
  end
end
