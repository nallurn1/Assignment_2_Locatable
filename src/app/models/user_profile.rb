class UserProfile < ApplicationRecord
    #Or has_one?
    has_many :user_location
    has_many :contact

    validates_presence_of :userID
    validates_presence_of :userName, :message=> "Enter Name Please"
end
