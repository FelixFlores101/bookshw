# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create!([
  {name_first: "Herman", name_last: "Melville"},
  {name_first: "Don", name_last: "Delillo"},
  {name_first: "Virginia", name_last: "Woolf"},
  {name_first: "Drake", name_last: "Talley"}
])
Book.create!([
  {title: "Moby Dick", author_id: 1},
  {title: "Bartleby the Scrivener", author_id: 1},
  {title: "Typee", author_id: 1},
  {title: "White Noise", author_id: 2},
  {title: "Ratner's Star", author_id: 2},
  {title: "Underworld", author_id: 2},
  {title: "A Room of One's Own", author_id: 3},
  {title: "Orlando", author_id: 3},
  {title: "To the Lighthouse", author_id: 3},
  {title: "JZ is better looking than me: One dev's journey to truth", author_id: 4}
])