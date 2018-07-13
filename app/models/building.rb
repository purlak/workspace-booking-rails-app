class Building < ApplicationRecord
    has_many :workspaces
    
    #to add validations
    validates :location_name, uniqueness: true
end
