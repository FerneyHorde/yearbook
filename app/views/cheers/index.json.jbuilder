json.array!(@cheers) do |cheer|
  json.extract! cheer, :id, :title, :cheer
  json.url cheer_url(cheer, format: :json)
end
