json.array!(@profs) do |prof|
  json.extract! prof, :id, :nome, :email, :senha
  json.url prof_url(prof, format: :json)
end
