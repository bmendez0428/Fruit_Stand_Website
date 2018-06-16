json.extract! customer, :id, :firstname, :lastname, :email, :phone, :address, :city, :state, :zip, :created_at, :updated_at
json.url customer_url(customer, format: :json)
