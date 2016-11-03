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

ActiveRecord::Schema.define(version: 20161103003723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.string   "cnpj"
    t.string   "social_name"
    t.string   "fantasy_name"
    t.string   "address"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "cep"
    t.string   "phone"
    t.string   "fax"
    t.string   "celphone"
    t.string   "representative_name"
    t.string   "representative_phone"
    t.string   "geolocation"
    t.date     "nusai"
    t.integer  "procedure_class_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "clinics", ["procedure_class_id"], name: "index_clinics_on_procedure_class_id", using: :btree

  create_table "procedure_classes", force: :cascade do |t|
    t.string   "procedure_class_name"
    t.integer  "procedure_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "procedure_classes", ["procedure_type_id"], name: "index_procedure_classes_on_procedure_type_id", using: :btree

  create_table "procedure_types", force: :cascade do |t|
    t.string   "procedure_type_name"
    t.integer  "procedure_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "procedure_types", ["procedure_id"], name: "index_procedure_types_on_procedure_id", using: :btree

  create_table "procedures", force: :cascade do |t|
    t.string   "procedure_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
