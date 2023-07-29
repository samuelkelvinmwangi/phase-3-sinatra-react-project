require 'faker'

puts "🌱 Seeding spices..."
# clear existing data
Runner.destroy.all
Race.destroy.all

# creating runners
5.times do
    Runner.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      phone_number: Faker::PhoneNumber.phone_number
    )

puts "✅ Done seeding!"
