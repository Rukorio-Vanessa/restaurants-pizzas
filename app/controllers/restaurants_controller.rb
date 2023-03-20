class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    #GET: display all restaurants 
    def index
        render json: Restaurant.all
    end

    #GET: display  restaurant by id
    def show
        restaurant = find_restaurant
        render json: restaurant, include: :pizzas
    end

    #DELETE: delete resaturany by id
    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        render json: {}, status: :no_content
       
    end

    private
    def find_restaurant
        Restaurant.find(params[:id])
    end
   
    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end
