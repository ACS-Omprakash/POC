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

ActiveRecord::Schema[7.0].define(version: 2022_12_13_065807) do
  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
    t.integer "quantity"
    t.string "itemname"
    t.decimal "unit_price"
    t.decimal "subtotal"
    t.decimal "rating"
    t.text "itemdescription"
    t.integer "order_id"
    t.string "image"
    t.integer "discount_id"
  end

  create_table "customizedfoods", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "top_ups"
    t.text "description"
    t.integer "item_id"
    t.string "add_ons"
    t.integer "cart_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.decimal "percentage"
  end

  create_table "items", force: :cascade do |t|
    t.string "itemname"
    t.decimal "price"
    t.text "itemdescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image", default: "istockphoto-1292437269-612x612.jpg"
    t.integer "discount_id", default: 3
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total", default: "0.0"
  end

end
