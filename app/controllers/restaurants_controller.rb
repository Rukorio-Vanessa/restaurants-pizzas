class RestaurantsController < ApplicationController
    #GET: display all restaurants 
    def index
        render json: Restaurant.all
    end
end
