 # Project name: Locatable
 # Description: Sending out alerts to the user's close contacts when they are in possible danger
 # Filename: user_location.rb
 # Description: user_locations is child to user_profile
 # Last modified on: 4/20/22

class UserLocation < ApplicationRecord
    belongs_to :user
end
