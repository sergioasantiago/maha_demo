json.array!(@consultores) do |consultore|
  json.extract! consultore, :id, :nome
  json.url consultore_url(consultore, format: :json)
end
