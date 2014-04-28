json.array!(@leaders) do |leader|
  json.extract! leader, :id, :person_id, :content
  json.url leader_url(leader, format: :json)
end
