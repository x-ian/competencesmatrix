# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090115190520) do

  create_table "competences", :force => true do |t|
    t.integer  "employee_id",             :limit => 11
    t.integer  "skill_range_id",          :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "skill_id",                :limit => 11
    t.integer  "role_id",                 :limit => 11
    t.datetime "last_change"
    t.date     "expiry_date"
    t.integer  "skill_maturity_range_id", :limit => 11
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id",    :limit => 11
    t.boolean  "inactive"
  end

  create_table "employees_organizational_units", :id => false, :force => true do |t|
    t.integer  "employee_id",            :limit => 11
    t.integer  "organizational_unit_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizational_units", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lft",          :limit => 11,                :null => false
    t.integer  "rgt",          :limit => 11,                :null => false
    t.integer  "lock_version", :limit => 11, :default => 0
  end

  create_table "organizational_units_roles", :id => false, :force => true do |t|
    t.integer  "organizational_unit_id", :limit => 11
    t.integer  "role_id",                :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lft",          :limit => 11,                :null => false
    t.integer  "rgt",          :limit => 11,                :null => false
    t.integer  "lock_version", :limit => 11, :default => 0
  end

  create_table "skill_categories_skills", :id => false, :force => true do |t|
    t.integer  "skill_id",          :limit => 11
    t.integer  "skill_category_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_maturity_models", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_maturity_range_descriptions", :force => true do |t|
    t.integer  "skill_id",                :limit => 11
    t.integer  "skill_maturity_range_id", :limit => 11
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_maturity_ranges", :force => true do |t|
    t.integer  "skill_maturity_model_id",            :limit => 11
    t.string   "value"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "default_maturity_range_description"
  end

  create_table "skill_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "skill_ranges", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "skill_model_id", :limit => 11
    t.text     "description"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "skill_maturity_model_id", :limit => 11
    t.integer  "skill_model_id",          :limit => 11
  end

end
