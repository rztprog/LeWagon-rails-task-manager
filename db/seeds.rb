# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

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

task = User.new(email: "nathan@lewagon.fr", password: "111111", first_name: "Nathan", last_name: "Jolivet")
nathan.save

file = URI.open('https://avatars.githubusercontent.com/u/45171753?v=4')
luc = User.new(email: "luc@lewagon.fr", password: "222222", first_name: "Luc", last_name: "Broion")
luc.photo.attach(io: file, filename: 'avatar', content_type: 'image')
luc.save

file = URI.open('https://avatars.githubusercontent.com/u/85166333?v=4')
christophe = User.new(email: "christophe@lewagon.fr", password: "333333", first_name: "Christophe", last_name: "Becquey")
christophe.photo.attach(io: file, filename: 'avatar', content_type: 'image')
christophe.save

file = URI.open('https://avatars.githubusercontent.com/u/80858493?v=4')
dany = User.new(email: "dany@lewagon.fr", password: "444444", first_name: "Dany", last_name: "Renard")
dany.photo.attach(io: file, filename: 'avatar', content_type: 'image')
dany.save

file = URI.open('https://avatars.githubusercontent.com/u/86717984?v=4')
estelle = User.new(email: "estelle@lewagon.fr", password: "555555", first_name: "Estelle", last_name: "Dourthe")
estelle.photo.attach(io: file, filename: 'avatar', content_type: 'image')
estelle.save

file = URI.open('https://avatars.githubusercontent.com/u/86261099?v=4')
violette = User.new(email: "violette@lewagon.fr", password: "666666", first_name: "Violette", last_name: "Ruccio")
violette.photo.attach(io: file, filename: 'avatar', content_type: 'image')
violette.save

file = URI.open('https://avatars.githubusercontent.com/u/86805683?v=4')
maxence = User.new(email: "maxence@lewagon.fr", password: "777777", first_name: "Maxence", last_name: "Lerouge")
maxence.photo.attach(io: file, filename: 'avatar', content_type: 'image')
maxence.save

puts "Congrats, #{Task.count} tasks was created!"
puts "=============================="