# frozen_string_literal: true

class AddUsersNullConstraints < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:users, :login, false)
    change_column_null(:users, :password, false)
  end
end
