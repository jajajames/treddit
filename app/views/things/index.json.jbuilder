json.array!(@things) do |thing|
  json.extract! thing, :id, :title, :summary, :link
  json.url thing_url(thing, format: :json)
end
