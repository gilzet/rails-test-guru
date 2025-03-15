# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clean up the existing data

# Answer.destroy_all
# Question.destroy_all
# Test.destroy_all
# User.destroy_all
# Category.destroy_all

categories = [
  { title: 'Frontend' },
  { title: 'Backend' },
  { title: 'Machine learning' }
].map do |category|
  Category.find_or_create_by!(category)
end

users = [
  { login: 'user1', password: 'user1' },
  { login: 'user2', password: 'user2' },
  { login: 'user3', password: 'user3' }
].map do |user|
  User.find_or_create_by!(user)
end

tests = [
  { title: 'HTML', level: 0, category_id: categories[0].id, author_id: users[0].id },
  { title: 'Go', level: 1, category_id: categories[1].id, author_id: users[1].id },
  { title: 'Ruby', level: 1, category_id: categories[1].id, author_id: users[1].id },
  { title: 'Ruby', level: 1, category_id: categories[1].id, author_id: users[1].id },
  { title: 'Python', level: 2, category_id: categories[2].id, author_id: users[2].id }
].map do |test|
  Test.find_or_create_by!(test)
end

questions = [
  { body: 'question 1', test_id: tests[0].id },
  { body: 'question 2', test_id: tests[0].id },
  { body: 'question 3', test_id: tests[1].id },
  { body: 'question 4', test_id: tests[1].id },
  { body: 'question 5', test_id: tests[2].id },
  { body: 'question 6', test_id: tests[2].id },
  { body: 'question 7', test_id: tests[3].id },
  { body: 'question 8', test_id: tests[3].id },
  { body: 'question 9', test_id: tests[4].id },
  { body: 'question 10', test_id: tests[4].id }
].map do |question|
  Question.find_or_create_by!(question)
end

answers = [
  { body: 'answer 1.1', correct: true, question_id: questions[0].id },
  { body: 'answer 1.2', correct: false, question_id: questions[0].id },
  { body: 'answer 2.1', correct: true, question_id: questions[1].id },
  { body: 'answer 2.2', correct: false, question_id: questions[1].id },
  { body: 'answer 3.1', correct: true, question_id: questions[2].id },
  { body: 'answer 3.2', correct: false, question_id: questions[2].id },
  { body: 'answer 4.1', correct: true, question_id: questions[3].id },
  { body: 'answer 4.2', correct: false, question_id: questions[3].id },
  { body: 'answer 5.1', correct: true, question_id: questions[4].id },
  { body: 'answer 5.2', correct: false, question_id: questions[4].id },
  { body: 'answer 6.1', correct: true, question_id: questions[5].id },
  { body: 'answer 6.2', correct: false, question_id: questions[5].id },
  { body: 'answer 7.1', correct: true, question_id: questions[6].id },
  { body: 'answer 7.2', correct: false, question_id: questions[6].id },
  { body: 'answer 8.1', correct: true, question_id: questions[7].id },
  { body: 'answer 8.2', correct: false, question_id: questions[7].id },
  { body: 'answer 9.1', correct: true, question_id: questions[8].id },
  { body: 'answer 9.2', correct: false, question_id: questions[8].id },
  { body: 'answer 10.1', correct: true, question_id: questions[9].id },
  { body: 'answer 10.2', correct: false, question_id: questions[9].id }
]
answers.each do |answer|
  Answer.find_or_create_by!(answer)
end

test_passages = [
  { test_progress: 0, user_id: users[0].id, test_id: tests[0].id },
  { test_progress: 1, user_id: users[0].id, test_id: tests[2].id },
  { test_progress: 3, user_id: users[1].id, test_id: tests[2].id },
  { test_progress: 2, user_id: users[1].id, test_id: tests[3].id },
  { test_progress: 3, user_id: users[2].id, test_id: tests[1].id },
  { test_progress: 3, user_id: users[2].id, test_id: tests[4].id }
]
test_passages.each do |test_passage|
  TestPassages.find_or_create_by!(test_passage)
end
