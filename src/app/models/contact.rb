class Contact < ApplicationRecord
    belongs_to :user
    has_many :alert

    Contact.joins(:User)
end
