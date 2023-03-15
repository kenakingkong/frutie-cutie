# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.datetime :birthday
      t.boolean :is_admin, default: false
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
