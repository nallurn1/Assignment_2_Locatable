class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.integer :userID
      t.integer :contactID
      t.string :contactName
      t.string :contactEmail
      t.string :contactPhone
      t.string :contactRelation

      t.timestamps
    end
  end
end
