json.array!(@disciplinas) do |disciplina|
  json.extract! disciplina, :id, :nome, :prof_id_id, :assunto_id_id
  json.url disciplina_url(disciplina, format: :json)
end
