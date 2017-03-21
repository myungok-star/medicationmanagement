# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Wipe the database
School.destroy_all
Medication.destroy_all

School.create([
  {
    name: "School 1"
  },
  {
    name: "School 2"
  }
])

Medication.create([
  {
    name: "Med 1",
    quantity: "10"
  },
  {
    name: "Med 2",
    quantity: "3"
  },
  {
    name: "Med 3",
    quantity: "8"
  }
])
