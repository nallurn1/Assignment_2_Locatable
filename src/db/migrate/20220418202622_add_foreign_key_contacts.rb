class AddForeignKeyContacts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :contacts, :users
  end
end
