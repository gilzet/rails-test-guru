# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages

  def passage_tests_by_level(level)
    tests.where(level: level)
         .pluck(:title)
  end
end
