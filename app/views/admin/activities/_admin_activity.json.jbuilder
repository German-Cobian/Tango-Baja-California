json.extract! admin_activity, :id, :category, :title, :description, :time, :place, :created_at, :updated_at
json.url admin_activity_url(admin_activity, format: :json)
