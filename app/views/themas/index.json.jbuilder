json.array!(@themas) do |thema|
  json.extract! thema, :id, :name
  json.url thema_url(thema, format: :json)
end
