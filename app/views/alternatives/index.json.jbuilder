json.array!(@alternatives) do |alternative|
  json.extract! alternative, :id, :description, :correct, :issue_id
  json.url alternative_url(alternative, format: :json)
end
