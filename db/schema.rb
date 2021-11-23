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

ActiveRecord::Schema.define(version: 2021_11_19_115837) do

  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.string "imagen"
    t.string "peli_serie_asoc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pelicula_serie_personajes", force: :cascade do |t|
    t.integer "pelicula_serie_id", null: false
    t.integer "personaje_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pelicula_serie_id"], name: "index_pelicula_serie_personajes_on_pelicula_serie_id"
    t.index ["personaje_id"], name: "index_pelicula_serie_personajes_on_personaje_id"
  end

  create_table "pelicula_series", force: :cascade do |t|
    t.string "imagen"
    t.string "titulo"
    t.date "fecha_creacion"
    t.integer "calificacion"
    t.string "personaje_asoc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "genero_id", null: false
    t.index ["genero_id"], name: "index_pelicula_series_on_genero_id"
  end

  create_table "personajes", force: :cascade do |t|
    t.string "imagen"
    t.string "nombre"
    t.integer "edad"
    t.decimal "peso", precision: 10, scale: 2
    t.text "historia"
    t.string "peliserie"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pelicula_serie_personajes", "pelicula_series", column: "pelicula_serie_id"
  add_foreign_key "pelicula_serie_personajes", "personajes"
  add_foreign_key "pelicula_series", "generos"
end
