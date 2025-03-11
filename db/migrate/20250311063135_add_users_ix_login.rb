# frozen_string_literal: true

class AddUsersIxLogin < ActiveRecord::Migration[7.1]
  def change
    add_index :users, :login, unique: true
  end
end
