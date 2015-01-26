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

ActiveRecord::Schema.define(version: 20150124185249) do

  create_table "assuntos", force: true do |t|
    t.string   "nome"
    t.string   "desc"
    t.integer  "disc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discs", force: true do |t|
    t.string   "nome"
    t.string   "desc"
    t.integer  "prof_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profs", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.string   "login"
    t.integer  "disc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provas", force: true do |t|
    t.integer  "total_alunos"
    t.integer  "disc_id"
    t.integer  "assunto_id"
    t.date     "data_termino"
    t.time     "hora_termino"
    t.integer  "nivel"
    t.string   "instituicao"
    t.string   "turma"
    t.string   "desc"
    t.boolean  "embaralhar_alternativa"
    t.boolean  "embaralhar_questao"
    t.integer  "tipo_quest"
    t.integer  "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quests", force: true do |t|
    t.integer  "nivel"
    t.integer  "disc_id"
    t.integer  "assunto_id"
    t.integer  "tipo"
    t.text     "pergunta"
    t.text     "a"
    t.text     "b"
    t.text     "c"
    t.text     "d"
    t.string   "correta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
