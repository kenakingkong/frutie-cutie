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

ActiveRecord::Schema[7.0].define(version: 20_230_315_091_826) do
  create_table 'cuties', force: :cascade do |t|
    t.string 'name', null: false
    t.integer 'character', null: false
    t.integer 'level', null: false
    t.datetime 'deleted_at', precision: nil
    t.integer 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_cuties_on_user_id'
  end

  create_table 'feedings', force: :cascade do |t|
    t.string 'item', null: false
    t.float 'count', null: false
    t.integer 'cutie_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['cutie_id'], name: 'index_feedings_on_cutie_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'phone', null: false
    t.datetime 'birthday'
    t.boolean 'is_admin', default: false
    t.datetime 'deleted_at', precision: nil
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
