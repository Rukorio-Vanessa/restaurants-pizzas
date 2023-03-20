class AddPizzaAndRestaurantToRestaurantPizza < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurant_pizzas, :pizza_id, :integer
    add_column :restaurant_pizzas, :restaurant_id, :integer
  end
end
