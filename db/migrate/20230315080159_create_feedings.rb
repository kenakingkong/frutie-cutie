# frozen_string_literal: true

class CreateFeedings < ActiveRecord::Migration[7.0]
  def change
    create_table :feedings do |t|
      t.string :type
      t.float :count, null: false
      t.references :cutie, index: true, null: false

      t.timestamps
    end
  end
end
