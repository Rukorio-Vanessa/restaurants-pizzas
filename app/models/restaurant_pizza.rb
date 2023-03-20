class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant
    
    #validation: must have a `price` between 1 and 30
    validates :price, presence: true, inclusion: { in: 1..30 }

end
