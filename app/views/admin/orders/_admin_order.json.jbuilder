json.extract! admin_order, :id, :customer_email, :customer_address, :total, :fulfilled, :created_at, :updated_at
json.url admin_order_url(admin_order, format: :json)
