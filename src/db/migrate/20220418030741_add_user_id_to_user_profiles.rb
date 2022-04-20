class AddUserIdToUserProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :user_id, :integer
  end
end
