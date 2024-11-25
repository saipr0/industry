json.extract! product, :id, :productID, :name, :price, :manufacturerDetails, :partDetails, :created_at, :updated_at
json.url product_url(product, format: :json)
