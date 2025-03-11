# frozen_string_literal: true

class AddQuestionsNullConstraint < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:questions, :body, false)
    change_column_null(:questions, :correct_answer, false)
  end
end
