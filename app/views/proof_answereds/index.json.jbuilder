json.array!(@proof_answereds) do |proof_answered|
  json.extract! proof_answered, :id, :name, :email, :startTime, :endTime
  json.url proof_answered_url(proof_answered, format: :json)
end
