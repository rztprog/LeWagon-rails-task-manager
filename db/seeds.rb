# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

# Run rails db:setup

puts "
▀███▀▀▀██▄  ███▀▀▀█████▀▀██▀▀██████▀▀▀██▄▀███▀▀▀██▄   ▄▄█▀▀██▄   ▄▄█▀▀▀█▄█
  ██   ▀██▄ █▀   ████▀   ██   ▀█ ██   ▀██▄ ██   ▀██▄▄██▀    ▀██▄██▀     ▀█
  ██   ▄██  ▀   ███      ██      ██   ▄██  ██   ▄██ ██▀      ▀███▀       ▀
  ▓██████      ███       ▓█      ███████   ▓██████  ██        ██▓
  ▓█  ██▄     ███   ▄    ▓█      ██        ▓█  ██▄  ██        ██▓▄    ▀████
  ▓█   ▀▓█   ▓██   ▄█    ▓█      █▓        ▓█   ▀▓█ ▀██      ██▀▓█▄     ██
  ▓█  ▓ ▓▓   ▓▓█   ▓█    ▓█      █▓        ▓█  ▓ ▓▓ ▓██      ▓█▓▓▓    ▀▓█▓▓
  ▓▓   ▀▓▓▓ ▓▓▓   ▓▓█    ▓▓      ▓▓        ▓▓   ▀▓▓▓▀█▓▓▓    ▓▓▓▒▓▓     ▓▓
▒ ▒▓▒  ▒ ▒ ▒ ▒ ▒ ▒ ▒▓  ▒ ▒▓▒▒  ▒▓▒▓▒     ▒ ▒▓▒  ▒ ▒ ▒ ▒ ▒ ▒ ▒    ▒▒▒ ▒ ▒▒
"

puts "
██                 ▀███
██                   ██
██████ ▄█▀██▄  ▄██▀███ ██  ▄██▀▀████████▄█████▄  ▄█▀██▄ ▀████████▄  ▄█▀██▄  ▄█▀█████ ▄▄█▀██▀███▄███
██  ██   ██  ██   ▀▀ ██ ▄█     ██    ██    ██ ██   ██   ██    ██ ██   ██ ▄██  ██  ▄█▀   ██ ██▀ ▀▀
██   ▄███▓█  ▀█████▄ ▓█▄██     ▓█    ██    ██  ▄███▓█   █▓    ██  ▄███▓█ ▀▓▓███▀  ▓█▀▀▀▀▀▀ █▓
█▓  █▓   ▓█       ██ ▓█ ▀██▄   ▓█    ▓█    ██ █▓   ▓█   █▓    ▓█ █▓   ▓█ █▓       ▓█▄    ▄ █▓
▓▓   ▓▓▓▓▒▓  ▀▓   █▓ ▓▓▓▓▓     ▓▓    ▓▓    ▓▓  ▓▓▓▓▒▓   ▓▓    ▓▓  ▓▓▓▓▒▓ ▀▓▓▓▓▓▀  ▓▓▀▀▀▀▀▀ ▓▓
▓▓  ▓▓   ▒▓  ▓▓   ▓▓ ▒▓ ▀▓▓▓   ▒▓    ▒▓    ▓▓ ▓▓   ▒▓   ▓▓    ▓▓ ▓▓   ▒▓ ▓▒       ▒▓▓      ▓▒
▒▒▒ ▒▓▒ ▒ ▓▒ ▒ ▒▓▒ ▒ ▒ ▒  ▒ ▒▒ ▒▓▒  ▒▒▒   ▒▒▓▒▒▓▒ ▒ ▓▒▒ ▒▒▒  ▒▓▒ ▒▓▒ ▒ ▓▒ ▒ ▒▓▒ ▒  ▒ ▒ ▒▒▒ ▒▒▒
                                                                         ▒▒     ▒▒
                                                                         ▒▒▒▒ ▒▒
"

# Cleaning all DB model
puts "=============================="
puts "Cleaning booking database..."
Task.destroy_all
puts "Done"
puts "=============================="

# Create users
puts "Creating some task..."
puts "How much tasks you want ?"
puts "> "
loop_n = STDIN.gets.chomp

puts "Creating #{loop_n} fake tasks, please wait..."
loop_n.to_i.times do
  task = Task.new(
    title:    "#{Faker::Verb.simple_present} #{Faker::Hobby.activity}",
    details:  Faker::Hacker.say_something_smart
  )
  task.save!
end

puts "Congrats, #{Task.count} tasks was created!"
puts "=============================="