class Subject < ActiveRecord::Base
    attr_accessible :name, :discipline_id
  belongs_to :discipline
  has_many :issues
  has_many :proofs
  
  validates_presence_of :name
  validates_presence_of :discipline_id

end
