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

ActiveRecord::Schema.define(version: 20131103012624) do

  create_table "categoria_equipos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "concentradors", force: true do |t|
    t.integer  "categoria_equipo_id"
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "clave_externa"
    t.float    "gis_latitud"
    t.float    "gis_longitud"
    t.string   "mac_address"
    t.string   "numero_serie"
    t.string   "ip_address"
    t.integer  "ip_port"
    t.string   "access_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
