json.array!(@issues) do |issue|
  json.extract! issue, :id, :inunciation, :tipo, :dificulty, :subject_id
  json.url issue_url(issue, format: :json)
end
