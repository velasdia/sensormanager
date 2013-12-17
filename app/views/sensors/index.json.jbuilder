json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :Concentrador_id, :nombre, :descripcion, :estado, :parametro, :valor, :uds, :gis_latitud, :gis_longitud
  json.url sensor_url(sensor, format: :json)
end
