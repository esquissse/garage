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

ActiveRecord::Schema.define(version: 20170314134800) do

  create_table "marques", force: :cascade do |t|
    t.string   "libelle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personnes", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.date     "date_naissance"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "personnes_voyages", force: :cascade do |t|
    t.integer "personne_id"
    t.integer "voyage_id"
  end

  create_table "voitures", force: :cascade do |t|
    t.string   "immatriculation"
    t.string   "couleur"
    t.string   "marque"
    t.string   "modele"
    t.date     "date_mise_en_service"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "personne_id"
    t.integer  "marque_id"
  end

  create_table "voyages", force: :cascade do |t|
    t.string   "depart"
    t.string   "arrivee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
