class Discipline < ActiveRecord::Base
    attr_accessible :name, :teacher_id
    belongs_to :teacher
    has_many :subjects
    
    validates_presence_of :name
end
