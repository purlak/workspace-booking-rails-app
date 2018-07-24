class Workspace < ApplicationRecord
    belongs_to :user, optional: true 
    belongs_to :building
    has_many :bookings
    
    #to add validations
end
