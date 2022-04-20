class Contacts < ActiveRecord::Migration[6.0]
  def change
    drop_table :contacts
  end
end
