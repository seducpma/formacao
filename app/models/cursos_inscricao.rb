class CursosInscricao < ActiveRecord::Base
  belongs_to :curso
  belongs_to :inscricao
end
