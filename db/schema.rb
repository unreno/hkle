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

ActiveRecord::Schema.define(version: 2018_09_11_235017) do

  create_table "variants", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "project"
    t.string "hkle"
    t.integer "quality"
    t.string "modification"
    t.string "chromosome"
    t.integer "position"
    t.string "direction"
    t.string "prepost"
    t.integer "value"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "desc"
    t.index ["chromosome"], name: "index_variants_on_chromosome"
    t.index ["direction"], name: "index_variants_on_direction"
    t.index ["hkle"], name: "index_variants_on_hkle"
    t.index ["modification"], name: "index_variants_on_modification"
    t.index ["position"], name: "index_variants_on_position"
    t.index ["prepost"], name: "index_variants_on_prepost"
    t.index ["project"], name: "index_variants_on_project"
    t.index ["quality"], name: "index_variants_on_quality"
    t.index ["subject"], name: "index_variants_on_subject"
    t.index ["value"], name: "index_variants_on_value"
  end

end
