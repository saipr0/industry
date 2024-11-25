json.extract! supplier, :id, :supplierID, :name, :contactDetails, :location, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
