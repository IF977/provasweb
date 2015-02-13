class Alternative < ActiveRecord::Base
    attr_accessible :description, :correct, :issue_id
    belongs_to :issue
  
    validates_presence_of :description
  
end
