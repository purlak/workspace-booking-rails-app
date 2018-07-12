class Workspace < ApplicationRecord
    belongs_to :user
    belongs_to :building
    
    #to add validations
end
