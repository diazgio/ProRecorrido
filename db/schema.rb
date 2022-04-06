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

ActiveRecord::Schema[7.0].define(version: 2022_04_06_021620) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "confirmaciones", force: :cascade do |t|
    t.bigint "guardia_id", null: false
    t.bigint "disponibilidad_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disponibilidad_id"], name: "index_confirmaciones_on_disponibilidad_id"
    t.index ["guardia_id"], name: "index_confirmaciones_on_guardia_id"
  end

  create_table "contratos", force: :cascade do |t|
    t.bigint "proyecto_id", null: false
    t.bigint "workers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_contratos_on_proyecto_id"
    t.index ["workers_id"], name: "index_contratos_on_workers_id"
  end

  create_table "contratos_workers", id: false, force: :cascade do |t|
    t.bigint "contrato_id"
    t.bigint "worker_id"
    t.index ["contrato_id"], name: "index_contratos_workers_on_contrato_id"
    t.index ["worker_id"], name: "index_contratos_workers_on_worker_id"
  end

  create_table "disponibilidads", force: :cascade do |t|
    t.integer "hora"
    t.integer "fecha", default: 0, null: false
    t.bigint "workers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contrato_id"
    t.boolean "valor", default: false
    t.integer "semana"
    t.integer "year"
    t.boolean "confirmed", default: false
    t.index ["contrato_id"], name: "index_disponibilidads_on_contrato_id"
    t.index ["workers_id"], name: "index_disponibilidads_on_workers_id"
  end

  create_table "guardia", force: :cascade do |t|
    t.integer "hora"
    t.integer "fecha", default: 0, null: false
    t.bigint "proyecto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_guardia_on_proyecto_id"
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

  add_foreign_key "confirmaciones", "disponibilidads"
  add_foreign_key "confirmaciones", "guardia", column: "guardia_id"
  add_foreign_key "contratos", "proyectos"
  add_foreign_key "contratos", "workers", column: "workers_id"
  add_foreign_key "disponibilidads", "workers", column: "workers_id"
  add_foreign_key "guardia", "proyectos"
end
