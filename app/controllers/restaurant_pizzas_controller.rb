class RestaurantPizzasController < ApplicationController
    #POST: create RestaurantPizza associated with an existing Pizza and Restaurant
    def create
        restaurant_pizza = RestaurantPizza.create(price: params[:price], pizza_id: params[:pizza_id], restaurant_id: params[:restaurant_id] ) 
        render json: restaurant_pizza, status: :created
    end
end
