json.array!(@answers) do |answer|
  json.extract! answer, :id, :proof_answered_id, :proof_issue_id, :alternative_id
  json.url answer_url(answer, format: :json)
end
