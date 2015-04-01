json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nome
  json.url empresa_url(empresa, format: :json)
end
