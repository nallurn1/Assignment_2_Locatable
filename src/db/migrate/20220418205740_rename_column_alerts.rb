class RenameColumnAlerts < ActiveRecord::Migration[6.0]
  def change
    rename_column :alerts, :contactID, :contact_id
  end
end
