class AddUserIdToUserLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :user_locations, :user_id, :integer
  end
end
