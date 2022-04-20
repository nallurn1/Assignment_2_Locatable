class AddForeignKeyAlertsUsers < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :alerts, :users
    add_foreign_key :alerts, :contacts
  end
end
