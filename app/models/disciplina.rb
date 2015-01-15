class Disciplina < ActiveRecord::Base
  belongs_to :prof_id
  belongs_to :assunto_id
end
