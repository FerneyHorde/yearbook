json.array!(@yb_classes) do |yb_class|
  json.extract! yb_class, :id, :name, :desc
  json.url yb_class_url(yb_class, format: :json)
end
