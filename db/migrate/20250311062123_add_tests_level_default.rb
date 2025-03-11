# frozen_string_literal: true

class AddTestsLevelDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default(:tests, :level, from: null, to: 0)
  end
end
