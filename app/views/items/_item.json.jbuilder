json.extract! item, :id, :itemname, :price, :rating, :itemdescription, :created_at, :updated_at
json.url item_url(item, format: :json)
