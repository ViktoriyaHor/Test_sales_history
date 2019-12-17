# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_17_082717) do

  create_table "sales_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "APN_code"
    t.decimal "RRP", precision: 5, scale: 2
    t.decimal "last_buy_price", precision: 5, scale: 2
    t.string "item_description"
    t.string "author"
    t.string "product_category"
    t.integer "actual_stock_on_hand"
    t.date "trans_date"
    t.time "trans_time"
    t.string "trans_document_number"
    t.string "trans_reference_number"
    t.integer "trans_quantity"
    t.decimal "trans_total_extax_value", precision: 10, scale: 2
    t.decimal "trans_total_tax", precision: 10, scale: 2
    t.decimal "trans_total_discount_given", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
