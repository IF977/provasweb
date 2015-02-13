class Teacher < ActiveRecord::Base
    attr_accessible :name, :cpf, :date, :phone, :user_id
  belongs_to :user
  has_many :disciplines
  has_many :proofs
  
  validates_presence_of :name
  validates_presence_of :cpf
  validates_presence_of :date
  validates_presence_of :phone
end
