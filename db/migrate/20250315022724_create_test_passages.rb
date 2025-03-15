# frozen_string_literal: true

class CreateTestPassages < ActiveRecord::Migration[7.1]
  def change
    create_table :test_passages do |t|
      t.integer :test_progress, null: false, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
