json.array!(@redes) do |rede|
  json.extract! rede, :id, :nome
  json.url rede_url(rede, format: :json)
end
