class User < ApplicationRecord
    has_many :bookings
    has_many :workspaces, through: :bookings
    
    has_secure_password
end
