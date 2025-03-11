# frozen_string_literal: true

class AddCategoriesIxTitle < ActiveRecord::Migration[7.1]
  def change
    add_index :categories, :title, unique: true
  end
end
