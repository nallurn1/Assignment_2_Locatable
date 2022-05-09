class AddForeignKeyUserProfilesUsers < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :user_profiles, :users
    add_foreign_key :user_locations, :users
  end
end
