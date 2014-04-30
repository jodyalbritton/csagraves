json.array!(@cemeteries) do |cemetery|
  json.extract! cemetery, :id, :name, :address, :address_two, :city, :state, :zip, :url, :phone, :description
  json.url cemetery_url(cemetery, format: :json)
end
