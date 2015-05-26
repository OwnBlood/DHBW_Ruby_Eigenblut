json.array!(@autors) do |autor|
  json.extract! autor, :id, :name
  json.url autor_url(autor, format: :json)
end
