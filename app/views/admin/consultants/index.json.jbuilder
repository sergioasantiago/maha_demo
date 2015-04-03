json.array!(@consultants) do |consultant|
  json.extract! consultant, :id, :name, :network_id
  json.url consultant_url(consultant, format: :json)
end
