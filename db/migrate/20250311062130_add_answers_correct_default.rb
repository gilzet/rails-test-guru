# frozen_string_literal: true

class AddAnswersCorrectDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default(:answers, :correct, from: nil, to: false)
  end
end
