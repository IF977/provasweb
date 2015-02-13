json.array!(@proof_issues) do |proof_issue|
  json.extract! proof_issue, :id, :proof_id, :issue_id
  json.url proof_issue_url(proof_issue, format: :json)
end
