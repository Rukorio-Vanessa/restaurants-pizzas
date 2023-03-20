class RestaurantPizzasController < ApplicationController
    #POST: create RestaurantPizza associated with an existing Pizza and Restaurant
    def create
        restaurant_pizza = RestaurantPizza.create(price: params[:price], pizza_id: params[:pizza_id], restaurant_id: params[:restaurant_id] ) 
        
        if restaurant_pizza
            render json: restaurant_pizza, status: :created
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end
end
