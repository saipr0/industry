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

ActiveRecord::Schema[8.0].define(version: 2024_11_25_124833) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "customerID"
    t.string "name"
    t.string "contactDetails"
    t.string "purchasedProducts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gorilla_glasses", force: :cascade do |t|
    t.string "partID"
    t.string "materialType"
    t.string "dimensions"
    t.string "qualityRating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oem_manufacturers", force: :cascade do |t|
    t.string "manufacturerID"
    t.string "name"
    t.string "contactDetails"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "productID"
    t.string "name"
    t.float "price"
    t.string "manufacturerDetails"
    t.string "partDetails"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retailers", force: :cascade do |t|
    t.string "retailerID"
    t.string "name"
    t.string "contactDetails"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplierID"
    t.string "name"
    t.string "contactDetails"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
