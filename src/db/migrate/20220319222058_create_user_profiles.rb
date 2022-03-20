class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.integer :userID
      t.string :userName
      t.string :userEmail
      t.string :userPhone
      t.string :userIP
      t.string :userLocation
      t.timestamps

    # create_table :contacts do |t|
    #   t.belongs_to :user_profile, index: true, foreign_key: true
    #   # t.integer :userID
    #   # t.integer :contactID
    #   # t.string :contactName
    #   # t.string :contactEmail
    #   # t.string :contactPhone
    #   # t.string :contactRelation
    #   t.timestamps
    end
  end
end
