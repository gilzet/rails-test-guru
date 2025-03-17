# frozen_string_literal: true

class Test < ApplicationRecord
  has_many :questions
  has_many :test_passages
  has_many :users, through: :test_passages
  belongs_to :category
  belongs_to :user, foreign_key: :author_id

  def self.names_by_category(title)
    Test.joins(:category)
        .where(categories: { title: title })
        .order(created_at: :desc)
        .pluck(:title)
  end
end
