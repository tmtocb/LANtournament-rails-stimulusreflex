json.extract! list_item, :id, :description, :completed, :completed_at, :list_id, :created_at, :updated_at
json.url list_item_url(list_item, format: :json)
