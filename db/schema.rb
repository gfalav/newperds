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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101110011919) do

  create_table "datos", :force => true do |t|
    t.integer  "distribuidora_id"
    t.integer  "tdato_id"
    t.integer  "periodo"
    t.integer  "zona_id"
    t.decimal  "energia",          :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distribuidoras", :force => true do |t|
    t.string   "distribuidora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tdatos", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "usuario"
    t.string   "password"
    t.string   "nombre"
    t.string   "perfil"
    t.date     "fvctopass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zonas", :force => true do |t|
    t.string   "zona"
    t.integer  "distribuidora_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
