class PizzasController < ApplicationController\
    #GET: display all pizzas
    def index
        render json: Pizza.all
    end
end
