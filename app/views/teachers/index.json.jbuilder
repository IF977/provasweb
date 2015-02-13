json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :name, :cpf, :date, :phone, :user_id
  json.url teacher_url(teacher, format: :json)
end
