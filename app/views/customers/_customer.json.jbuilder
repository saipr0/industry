json.extract! customer, :id, :customerID, :name, :contactDetails, :purchasedProducts, :created_at, :updated_at
json.url customer_url(customer, format: :json)
