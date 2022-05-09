class CreateUserLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_locations do |t|
      t.string :user_location_street
      t.string :user_location_city
      t.string :user_location_state
      t.string :user_location_country
      t.string :user_ip

      t.timestamps
    end
  end
end
