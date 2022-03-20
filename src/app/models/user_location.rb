class UserLocation < ApplicationRecord
    belongs_to :user_profile

    validates_presence_of :userID
    validates_presence_of :address1
    validates_presence_of :city
    validates_presence_of :zipcode
end
