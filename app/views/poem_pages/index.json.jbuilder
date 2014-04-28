json.array!(@poem_pages) do |poem_page|
  json.extract! poem_page, :id, :number, :lines
  json.url poem_page_url(poem_page, format: :json)
end
