# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {
      name:
      "George"
    },
    {
      name:
      "Fred"
    },
  ])

Menu.create(name: "Frenchie's")


Item.create([
    {
      name: "Fries",
      description: "Do you really need a description for fries?",
      price: "5.00",
      is_special: false,
      size: "medium",
      menu: Menu.first
    },
    {
      name: "Cheesy eggs with bacon",
      description: "yummmmmmm",
      price: "8.00",
      is_special: true,
      size: "N/A",
      menu: Menu.first
    },
    {
      name: "Cheese Fries",
      description: "Fries and cheese",
      price: "5.00",
      is_special: false,
      size: "medium",
      menu: Menu.first
    },
    {
      name: "Burger",
      description: "1/2 pound monster",
      price: "11.00",
      is_special: false,
      size: "big",
      menu: Menu.first
    }
  ])
