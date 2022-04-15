class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts do |t|
      t.integer :contactID
      t.string :message
      t.datetime :timer

      t.timestamps
    end
  end
end
