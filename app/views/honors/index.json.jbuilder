json.array!(@honors) do |honor|
  json.extract! honor, :id, :person_id, :content
  json.url honor_url(honor, format: :json)
end
