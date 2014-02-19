json.array!(@prioridades) do |prioridade|
  json.extract! prioridade, :id, :nombre, :descripcion
  json.url prioridade_url(prioridade, format: :json)
end
