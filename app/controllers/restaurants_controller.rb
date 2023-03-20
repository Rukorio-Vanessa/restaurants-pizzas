class RestaurantsController < ApplicationController
    #GET: display all restaurants 
    def index
        render json: Restaurant.all
    end

    #GET: display  restaurant by id
    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            render json: restaurant
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end
end
