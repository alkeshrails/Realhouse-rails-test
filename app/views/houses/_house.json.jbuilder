json.extract! house, :id, :owner, :address, :rooms, :sqmt, :floors, :air_cond, :price, :float, :created_at, :updated_at
json.url house_url(house, format: :json)
