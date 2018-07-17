class Workspace < ApplicationRecord
    belongs_to :user, optional: true 
    belongs_to :building
    
    #to add validations
end
