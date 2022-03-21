class UserLocation < ApplicationRecord
    belongs_to :user_profile
    validates :userID, presence: true, uniqueness: true
    validates_presence_of :address1
    validates_presence_of :city
    validates_presence_of :zipcode
end