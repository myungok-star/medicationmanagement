# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# # Wipe the database
School.destroy_all
MedicationCategory.destroy_all
Medication.destroy_all


School.create([
  {
    name: "School 1"
  },
  {
    name: "School 2"
  }
])

MedicationCategory.create([
  {
    name: "Med 1",
    image: "http://i.imgur.com/w092rqW.png"
  },
  {
    name: "Med 2",
    image: "http://i.imgur.com/l37lutC.jpg"
  },
  {
    name: "Med 3",
    image: "http://i.imgur.com/BH7LRLC.jpg"
  }
])

Medication.create([
  {
    quantity: 15,
    school_id: 1,
    medication_category_id: 1
  },
  {
    quantity: 6,
    school_id: 1,
    medication_category_id: 2
  },
  {
    quantity: 8,
    school_id: 1,
    medication_category_id: 3
  },
  {
    quantity: 14,
    school_id: 2,
    medication_category_id: 1
  },
  {
    quantity: 10,
    school_id: 2,
    medication_category_id: 2
  },
  {
    quantity: 4,
    school_id: 2,
    medication_category_id: 3
  }
])
