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

ActiveRecord::Schema.define(version: 2022_11_26_062118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cryptos", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.string "slug"
    t.float "price"
    t.float "market_cap"
    t.integer "market_cap_rank"
    t.float "total_volume"
    t.float "high_24h"
    t.float "low_24h"
    t.float "price_change_24h"
    t.float "price_change_percentage_24h"
    t.float "market_cap_change_24h"
    t.float "market_cap_change_percentage_24h"
    t.float "circulating_supply"
    t.float "total_supply"
    t.float "max_supply"
    t.float "ath"
    t.float "ath_change_percentage"
    t.string "ath_date"
    t.float "atl"
    t.float "atl_change_percentage"
    t.string "atl_date"
    t.string "roi"
    t.string "last_updated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
