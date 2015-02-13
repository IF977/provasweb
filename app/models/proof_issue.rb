class ProofIssue < ActiveRecord::Base
 
 attr_accessible :issue_id, :proof_id

  belongs_to :issue
  belongs_to :proof
  has_many :answers
  has_many :proof_answereds, through: :answers#, source: :proofs


  
end
