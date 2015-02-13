class Answer < ActiveRecord::Base
  attr_accessible :proof_answered_id, :proof_issue_id, :alternative_id
  belongs_to :proof_answered
  belongs_to :proof_issue
  belongs_to :alternative
  
 def selecionaQuestoes
    @questoes = ProofIssue.all
 end 

end
