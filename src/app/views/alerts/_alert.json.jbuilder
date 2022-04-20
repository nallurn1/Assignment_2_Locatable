json.extract! alert, :id, :alert_text, :alert_type, :contact_id, :user_id, :created_at, :updated_at, :user_id
json.url alert_url(alert, format: :json)
