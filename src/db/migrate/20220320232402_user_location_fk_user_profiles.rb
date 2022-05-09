class UserLocationFkUserProfiles < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :user_locations, :user_profiles, column: :userID, primary_key: :userID
  end
end
