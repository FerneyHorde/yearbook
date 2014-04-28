json.array!(@titles) do |title|
  json.extract! title, :id, :title, :subtitle, :content
  json.url title_url(title, format: :json)
end
