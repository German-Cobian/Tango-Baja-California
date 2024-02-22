json.extract! admin_event, :id, :title, :description, :hosted_by, :start_time, :place, :created_at, :updated_at
json.url admin_event_url(admin_event, format: :json)
