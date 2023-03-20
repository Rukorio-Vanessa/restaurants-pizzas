# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding pizzas and restaurants 🍕..."

Pizza.create(name: 'Margherita', ingredients: 'Pizza dough, Passata sauce, Mozzarella cheese, Basil leaves, Pepper, Extra virgin olive oil')
Pizza.create(name: 'Pepperoni', ingredients: 'Pizza dough, Tomatoes, Pepper, Oregano, Extra virgin olive oil, Basil leaves, Mozzarella cheese, Parmesan cheese, Pepperoni')
Pizza.create(name: 'Chicken', ingredients: 'Pizza dough, Red onion, Sunflower Oil, Chicken breasts, Mozzarella Cheese, Root ginger, Garlic cloves, Pizza sauce, Tomatoes, Soy sauce, Chilli powder')
Pizza.create(name: 'Vegetarian', ingredients: 'Pizza dough, Pizza Sauce, Tomatoes, Oregano, Cheddar cheese, Mozzarella Cheese, Onions, Red peppers, Green peppers, Mushrooms')
Pizza.create(name: 'Mexican', ingredients: 'Pizza dough, Onions, Tomato Sauce, Ketchup, Ghee, Butter, Tomatoes, Sugar, Chillies, Jalapenos, Rajma, Mozzarella Cheese')

5.times do
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address
    )
end

5.times do
    RestaurantPizza.create(
        price: Faker::Commerce.price(range: 1..30.0, as_string: false)
    )
end


puts "Yay! Seeding complete! ✅"