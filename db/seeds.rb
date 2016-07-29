# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all

5.times do
  AnswerTask.create(
    name: Faker::Company.bs,
    description: Faker::Lorem.paragraph,
    points: Faker::Number.between(2, 6) * 100,
    answer: "one"
  )
end

1.times do
  PhotoTask.create(
    name: Faker::Company.bs,
    description: Faker::Lorem.paragraph,
    points: Faker::Number.between(2, 6) * 100,
    answer: "one"
  )
end

5.times do
  User.create(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    score: Faker::Number.between(2, 23) * 100
  )
end
