class Workspace < ApplicationRecord
    belongs_to :user
    belongs_to :building
end
