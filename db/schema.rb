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

ActiveRecord::Schema.define(version: 20161228164622) do

  create_table "ingredients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["name"], name: "index_ingredients_on_name", unique: true
  end

  create_table "recipe_steps", force: :cascade do |t|
    t.integer  "number"
    t.string   "instructions"
    t.integer  "prep_time"
    t.integer  "cook_time"
    t.integer  "recipe_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["recipe_id"], name: "index_recipe_steps_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "steps_ingredients_joins", force: :cascade do |t|
    t.integer  "recipe_step_id"
    t.integer  "ingredient_id"
    t.integer  "amount"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["ingredient_id"], name: "index_steps_ingredients_joins_on_ingredient_id"
    t.index ["recipe_step_id"], name: "index_steps_ingredients_joins_on_recipe_step_id"
  end

end
