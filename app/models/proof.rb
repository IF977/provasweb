class Proof < ActiveRecord::Base
  
  
  
  attr_accessible :message, :header,:token, :closingDate, :duration,:status, :questionsNumber, :subject_id, :teacher_id

  belongs_to :subject
  belongs_to :teacher

  has_many :proof_issues
  has_many :issues, through: :proof_issues
  
  validates_uniqueness_of :token

  #has_and_belongs_to_many :issues

  # has_many :proof_issues, :dependent => :destroy


  validates_presence_of :message
  validates_presence_of :token
  validates_presence_of :status
  validates_presence_of :questionsNumber
  validates_presence_of :subject_id

 def self.testa_token?(token)
    valido = Proof.where(token: token).first()
    
    if valido
      true
    else
      false
    end
  end
  
  def self.get_proof_id(token)
    Proof.where(token: token).first().id
  end
  
end
