json.array!(@quests) do |quest|
  json.extract! quest, :id, :level, :discipline_id, :subject_id, :question, :teacher_id
  json.url quest_url(quest, format: :json)
end
