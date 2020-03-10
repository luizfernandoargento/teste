json.extract! address, :id, :member_id, :address_type, :postal_code, :state, :city, :district, :street_name, :number, :complement, :created_at, :updated_at
json.url address_url(address, format: :json)
