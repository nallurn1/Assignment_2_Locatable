json.extract! contact, :id, :userID, :contactID, :contactName, :contactEmail, :contactPhone, :contactRelation, :created_at, :updated_at
json.url contact_url(contact, format: :json)
