# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_10_161933) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contrato_workers", force: :cascade do |t|
    t.bigint "contrato_id", null: false
    t.bigint "worker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contrato_id"], name: "index_contrato_workers_on_contrato_id"
    t.index ["worker_id"], name: "index_contrato_workers_on_worker_id"
  end

  create_table "contratos", force: :cascade do |t|
    t.bigint "proyecto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration", default: 0
    t.integer "start_hour", default: [], array: true
    t.integer "end_hour", default: [], array: true
    t.integer "num_sem", default: 1
    t.string "nombre_c"
    t.index ["proyecto_id"], name: "index_contratos_on_proyecto_id"
  end

  create_table "disponibilidads", force: :cascade do |t|
    t.integer "hora"
    t.integer "fecha", default: 0, null: false
    t.bigint "worker_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contrato_id"
    t.boolean "valor", default: false
    t.integer "semana"
    t.integer "year"
    t.boolean "confirmed", default: false
    t.index ["contrato_id"], name: "index_disponibilidads_on_contrato_id"
    t.index ["worker_id"], name: "index_disponibilidads_on_worker_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre_empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contrato_workers", "contratos"
  add_foreign_key "contrato_workers", "workers"
  add_foreign_key "contratos", "proyectos"
  add_foreign_key "disponibilidads", "workers"
end
