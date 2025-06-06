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

ActiveRecord::Schema[7.1].define(version: 2016_01_26_221132) do
  create_table "blogs", force: :cascade do |t|
    t.string "name", limit: 30
    t.string "tagline", limit: 30
  end

  create_table "posts", force: :cascade do |t|
    t.integer "blog_id", precision: 38
    t.string "headline", limit: 30
    t.text "body_text"
  end

end
