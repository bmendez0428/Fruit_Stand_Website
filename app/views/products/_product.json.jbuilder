json.extract! product, :id, :fruitname, :supplier, :color, :description, :price, :currentinventoryweight, :imagepath, :created_at, :updated_at
json.url product_url(product, format: :json)
