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

ActiveRecord::Schema.define(version: 20201009093732) do

  create_table "client_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "status_name"
    t.boolean  "status",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.boolean  "status",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "client_id"
    t.string   "address"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "whatsapp_number"
    t.string   "email_id"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "purchase_orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "customer_id"
    t.integer  "sales_person_id"
    t.integer  "preferred_contact"
    t.integer  "status_id"
    t.string   "subscription_type"
    t.integer  "subscription_id"
    t.boolean  "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "sales_person_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_no"
    t.string   "whatapp_number"
    t.string   "email_id"
    t.string   "password"
    t.boolean  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sales_person_logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "sales_person_id"
    t.string   "ip_address"
    t.string   "loaction"
    t.boolean  "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subscriptions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category"
    t.integer  "discount_percentage"
    t.integer  "contract_month_period"
    t.integer  "min_quantity_per_order"
    t.integer  "min_order_per_month"
    t.boolean  "status",                 default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
