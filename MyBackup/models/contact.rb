class Contact < ApplicationRecord
    # belongs_to :user_profile

    validates_presence_of :userID
    validates_presence_of :contactID
    validates_presence_of :contactName, :message=> "Enter Contacts's Name Please"
    validates_presence_of :contactEmail, :message=> "Enter Contact's Email"
    validates_presence_of :contactPhone, :message=> "Enter Contact's Phone"
end
