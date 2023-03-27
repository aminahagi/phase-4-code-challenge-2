# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
kamala = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
doreen = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
gwen = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

strength_power = Power.create(name: "Super Strength", description: "Gives the wielder super-human strength")
flight_power = Power.create(name: "Flight", description: "Gives the wielder the ability to fly through the skies at supersonic speed")
invisibility_power = Power.create(name: "Invisibility", description: "Grants the wielder the power to turn invisible at will")


kamala.heropowers.create(power: strength_power, strength: "Average")
doreen.heropowers.create(power: flight_power, strength: "Strong")
gwen.heropowers.create(power: invisibility_power, strength: "Weak")
kamala.heropowers.create(power: invisibility_power, strength: "Strong")
doreen.heropowers.create(power: strength_power, strength: "Weak")
gwen.heropowers.create(power: flight_power, strength: "Average")