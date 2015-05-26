json.array!(@artikels) do |artikel|
  json.extract! artikel, :id, :name, :text, :datum
  json.url artikel_url(artikel, format: :json)
end
