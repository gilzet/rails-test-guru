# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_passages, dependent: :destroy
  has_many :tests, through: :test_passages
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  def passage_tests_by_level(level)
    tests.where(level: level)
         .pluck(:title)
  end
end
