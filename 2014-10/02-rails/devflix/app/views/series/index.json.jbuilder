json.array!(@series) do |serie|
  json.extract! serie, :id, :nombre, :temporadas, :descripcion, :imagen, :en_transmision
  json.url serie_url(serie, format: :json)
end
