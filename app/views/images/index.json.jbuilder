json.array!(@images) do |image|
  json.extract! image, :id, :filename, :caption
  json.url image_url(image, format: :json)
end
