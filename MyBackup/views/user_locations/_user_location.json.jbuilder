json.extract! user_location, :id, :userID, :address1, :address2, :city, :state, :zipcode, :created_at, :updated_at
json.url user_location_url(user_location, format: :json)
