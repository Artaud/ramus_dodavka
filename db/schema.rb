# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140311114655) do

  create_table "fakturas", force: true do |t|
    t.integer  "vypujcka_id"
    t.integer  "cislo"
    t.date     "datum"
    t.integer  "castka"
    t.boolean  "prijata"
    t.boolean  "vydana"
    t.text     "ucel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "najemces", force: true do |t|
    t.integer  "osoba_id"
    t.string   "nazevfirmy"
    t.integer  "ico"
    t.integer  "cislorp"
    t.integer  "cisloop"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "osobas", force: true do |t|
    t.string   "jmeno"
    t.string   "prijmeni"
    t.integer  "telefon"
    t.string   "ulice"
    t.integer  "cislodomu"
    t.integer  "smerovacicislo"
    t.string   "mesto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vypujckas", force: true do |t|
    t.integer  "zarizeni_id"
    t.integer  "najemce_id"
    t.integer  "faktura_id"
    t.date     "datumod"
    t.date     "datumdo"
    t.boolean  "platba_hotove"
    t.boolean  "platba_fakturou"
    t.string   "misto_predani"
    t.integer  "zaloha"
    t.integer  "cislo_smlouvy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zarizenis", force: true do |t|
    t.string   "nazev"
    t.integer  "evidencni_cislo"
    t.boolean  "vypujceno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
