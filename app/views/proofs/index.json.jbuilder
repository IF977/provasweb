json.array!(@proofs) do |proof|
  json.extract! proof, :id, :message, :header, :token, :closingDate, :duration, :status, :questionsNumber, :subject_id, :teacher_id
  json.url proof_url(proof, format: :json)
end
