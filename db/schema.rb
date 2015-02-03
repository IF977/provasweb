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

ActiveRecord::Schema.define(version: 20150129134758) do

  create_table "alternatives", force: true do |t|
    t.string   "description"
    t.boolean  "correct"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alternatives", ["issue_id"], name: "index_alternatives_on_issue_id"

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "disciplines", ["teacher_id"], name: "index_disciplines_on_teacher_id"

  create_table "issues", force: true do |t|
    t.string   "inunciation"
    t.string   "tipo"
    t.string   "dificulty"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issues", ["subject_id"], name: "index_issues_on_subject_id"

  create_table "proof_issues", force: true do |t|
    t.integer  "proof_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proof_issues", ["issue_id"], name: "index_proof_issues_on_issue_id"
  add_index "proof_issues", ["proof_id"], name: "index_proof_issues_on_proof_id"

  create_table "proofs", force: true do |t|
    t.string   "message"
    t.string   "header"
    t.string   "token"
    t.date     "closingDate"
    t.time     "duration"
    t.string   "status"
    t.integer  "questionsNumber"
    t.integer  "subject_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proofs", ["subject_id"], name: "index_proofs_on_subject_id"
  add_index "proofs", ["teacher_id"], name: "index_proofs_on_teacher_id"

  create_table "quests", force: true do |t|
    t.integer  "level"
    t.integer  "discipline_id"
    t.integer  "subject_id"
    t.text     "question"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quests", ["discipline_id"], name: "index_quests_on_discipline_id"
  add_index "quests", ["subject_id"], name: "index_quests_on_subject_id"
  add_index "quests", ["teacher_id"], name: "index_quests_on_teacher_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["discipline_id"], name: "index_subjects_on_discipline_id"

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "date"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
