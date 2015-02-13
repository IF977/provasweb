class ProofAnswered < ActiveRecord::Base
      attr_accessible :name, :email,:endTime, :startTime, :token, :answers_attributes
      has_many :answers
      has_many :proof_issues, through: :answers
      accepts_nested_attributes_for :answers, :reject_if => :all_blank, :allow_destroy => true
      validates_presence_of :name
      validates_presence_of :email
      validates_presence_of :token
      
      validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
      
end


