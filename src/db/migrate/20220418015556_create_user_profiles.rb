class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_phone
      t.string :user_address_line1
      t.string :user_address_line2
      t.string :user_city
      t.string :user_state
      t.integer :user_zipcode
      t.string :user_country

      t.timestamps
    end
  end
end
