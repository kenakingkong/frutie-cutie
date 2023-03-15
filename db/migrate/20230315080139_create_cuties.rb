# frozen_string_literal: true

class CreateCuties < ActiveRecord::Migration[7.0]
  def change
    create_table :cuties do |t|
      t.string :name, null: false
      t.integer :character, null: false
      t.integer :level, null: false
      t.timestamp :deleted_at
      t.references :user, index: true, null: false

      t.timestamps
    end
  end
end
