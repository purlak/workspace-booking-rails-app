class Building < ApplicationRecord
    has_many :workspaces
    
    #to add validations
    validates :location_name, uniqueness: true
    
    def self.sort_alphabetically
        self.order(location_name: :asc )   
    end 
    
end
