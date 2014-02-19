json.array!(@incidentes) do |incidente|
  json.extract! incidente, :id, :asunto, :descripcion, :responsable
  json.url incidente_url(incidente, format: :json)
end
