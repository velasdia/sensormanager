json.array!(@concentradors) do |concentrador|
  json.extract! concentrador, :id, :CategoriaEquipo_id, :nombre, :descripcion, :estado, :gis_latitud, :gis_longitud, :mac_address, :numero_serie, :ip_address, :ip_port, :access_url
  json.url concentrador_url(concentrador, format: :json)
end
