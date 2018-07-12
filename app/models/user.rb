class User < ApplicationRecord
    has_many :bookings
    has_many :workspaces, through: :bookings
end
