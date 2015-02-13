class Quest < ActiveRecord::Base
  belongs_to :discipline
  belongs_to :subject
  belongs_to :teacher
end
