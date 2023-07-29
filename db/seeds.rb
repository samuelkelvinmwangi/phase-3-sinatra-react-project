require 'faker'

puts "🌱 Seeding spices..."

# clear existing data
Runner.destroy_all
Race.destroy_all

# creating runners
5.times do
    Runner.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      phone_number: Faker::PhoneNumber.phone_number
    )
    end

# Create races and associate with runners
runners = Runner.all

10.times do
    Race.create(
      name: Faker::Game.title,
      distance: Faker::Number.decimal(l_digits: 2),
      runner: runners.sample
    )
  end

puts "✅ Done seeding!"
