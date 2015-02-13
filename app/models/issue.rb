class Issue < ActiveRecord::Base
    
  attr_accessible :inunciation, :tipo, :dificulty, :subject_id
  belongs_to :subject
  has_many :alternatives

    has_many :proof_issues
    has_many :proofs, through: :proof_issues#, source: :proofs
  
  validates_presence_of :inunciation
  validates_presence_of :tipo
  validates_presence_of :dificulty
  validates_presence_of :subject_id
  
  
end


