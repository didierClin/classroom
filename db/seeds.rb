# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Course.create! [
  {field: "Ruby 1", teacher:"Pierre"},
  {field: "Ruby 2", teacher:"Paul"},
  {field: "Ruby 3", teacher:"Jacques"},
  {field: "Ruby 4", teacher:"Marie"},
  {field: "Ruby 5", teacher:"Noemie"},
  {field: "Ruby 6", teacher:"Alexandre"},
  {field: "Ruby 7", teacher:"Mats"},
  {field: "Ruby 8", teacher:"DHH"}
]
Student.destroy_all
Student.create! [
    {name: "Ammara", course_id: 3},
    {name: "Arouna", course_id: 4},
    {name: "Ernst", course_id: 5},
    {name: "John", course_id: 6},
    {name: "Maxime", course_id: 7}
]
