json.array!(@tipo_incidentes) do |tipo_incidente|
  json.extract! tipo_incidente, :id, :nombre, :descripcion
  json.url tipo_incidente_url(tipo_incidente, format: :json)
end
