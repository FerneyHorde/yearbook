json.array!(@graduates) do |graduate|
  json.extract! graduate, :id, :person_id, :content
  json.url graduate_url(graduate, format: :json)
end
