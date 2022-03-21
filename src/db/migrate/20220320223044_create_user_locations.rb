class CreateUserLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_locations do |t|
      t.integer :userID
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
    add_index :user_locations, :userID, unique: true
  end
end
