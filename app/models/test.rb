# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user, foreign_key: :author_id

  has_many :questions, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages

  def self.names_by_category(title)
    Test.joins(:category)
        .where(categories: { title: title })
        .order(created_at: :desc)
        .pluck(:title)
  end
end
