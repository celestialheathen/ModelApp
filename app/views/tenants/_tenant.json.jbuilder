json.extract! tenant, :id, :name, :rent, :term, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
