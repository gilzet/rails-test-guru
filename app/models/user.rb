# frozen_string_literal: true

class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages

  def passage_tests_by_level(level)
    Test.joins('JOIN "test_passages" ON "tests"."id" = "test_passages"."test_id"')
        .where(level: level)
        .where(test_passages: { user_id: id })
        .pluck(:title)
  end
end
