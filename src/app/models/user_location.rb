# Project name: Locatable
 # Description: Sending out alerts to the user's close contacts when they are in possible danger
 # Filename: user_location.rb
 # Description: user_locations is child to user_profile
 # Last modified on: 5/12/22
 #Code written by Nithya Nalluri

 class UserLocation < ApplicationRecord
    belongs_to :user
    #Checking is the user inputs these parameters
    validates :user_location_street, presence: true
    validates :user_location_city, presence: true
    validates :user_location_state, presence: true
    validates :user_location_country, presence: true

    def self.search(search)
        if search
            location_street = UserLocation.find_by(user_location_street: search)
            location_city = UserLocation.find_by(user_location_city: search)
            location_state = UserLocation.find_by(user_location_state: search)
            location_country = UserLocation.find_by(user_location_country: search)
            if location_street
                self.where(id: location_street) 
            elsif location_city
                self.where(id: location_city)
            elsif location_state 
                self.where(id: location_state)
            elsif location_country
                self.where(id: location_country)
            else
                UserLocation.all
            end
        else
            UserLocation.all
        end
    end

end
