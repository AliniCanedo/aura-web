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

ActiveRecord::Schema[7.0].define(version: 2023_07_11_164245) do
  create_table "answer_models", force: :cascade do |t|
    t.string "description"
    t.integer "numerical_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "student_id", null: false
    t.string "student_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["student_id"], name: "index_answers_on_student_id"
  end

  create_table "multiples", force: :cascade do |t|
    t.string "description"
    t.integer "answer_model_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_model_id"], name: "index_multiples_on_answer_model_id"
  end

  create_table "question_ratings", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "description"
    t.integer "question_rating_id", null: false
    t.integer "answer_model_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_model_id"], name: "index_questions_on_answer_model_id"
    t.index ["question_rating_id"], name: "index_questions_on_question_rating_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "registration"
    t.integer "period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "students"
  add_foreign_key "multiples", "answer_models"
  add_foreign_key "questions", "answer_models"
  add_foreign_key "questions", "question_ratings"
end
