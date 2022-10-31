# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prompt.create!({ title: "Dungeon Dragon", content: "Traveling through an underground cavern you stumble over a dungeon that contains an ancient dragon and a hoard of treasure." })
Prompt.create!({ title: "Murder on the Northern Express", content: "A murder has occured on the northern express, the only clues are a hairpin and a man's left shoe." })
Prompt.create!({ title: "The Taker", content: "Life in a world that slowly but surely takes away all the color and sensation of the people for the purpose of making them happier." })

User.create!({ first_name: "Devorah", last_name: "Ortega", username: "devort", password: "1password1", password_confirmation: "1password1" })
User.create!({ first_name: "Bob", last_name: "Green", username: "bobgre", password: "2password2", password_confirmation: "2password2" })
User.create!({ first_name: "Jane", last_name: "Doe", username: "jandoe", password: "3password3", password_confirmation: "3password3" })

Tag.create!({ tag: "fantasy" })
Tag.create!({ tag: "mystery" })
Tag.create!({ tag: "modern dystopia" })

PromptTag.create!({ prompt_id: 1, tag_id: 1 })
PromptTag.create!({ prompt_id: 2, tag_id: 2 })
PromptTag.create!({ prompt_id: 3, tag_id: 3 })
