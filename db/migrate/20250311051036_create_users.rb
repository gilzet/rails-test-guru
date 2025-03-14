# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :login, null: false, index: { unique: true }
      t.string :password, null: false

      t.timestamps
    end
  end
end
