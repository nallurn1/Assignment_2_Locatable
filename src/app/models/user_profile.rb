class UserProfile < ApplicationRecord
    #Or has_one?
    has_many :user_locations , dependent: :destroy
    has_many :contacts , dependent: :destroy

    validates :userID, presence: true, uniqueness: true
    validates_presence_of :userName, :message=> "Enter user name please"
end