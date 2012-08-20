class Inscricao < ActiveRecord::Base
  
  belongs_to :participante, :dependent => :destroy
  #belongs_to :opcao1, :class_name => 'Unidade', :foreign_key => "opcao1"
  #belongs_to :opcao2, :class_name => 'Unidade', :foreign_key => "opcao2"
  validates_presence_of :existe_vaga?, :message => "Não existe mais vagas dispiveis a este curso"
  has_and_belongs_to_many :cursos
  accepts_nested_attributes_for :participante
  validates_presence_of :participante_id
  validates_uniqueness_of :participante_id, :message => " Error => Este participante já efetuou a inscrição"
  attr_accessor :vagas
  Periodo = %w(Matutino Vespertino Noturno Sabado_Matutino)




  def existe_vaga?
    cursos = self.cursos
    cursos.each do |curso|
      course = Curso.find(curso)
      t = course.vagas_disponiveis
      course.vagas_disponiveis <= 0 ? false : true
      if course.vagas_disponiveis <= 0 ? true : false
        errors.add(:vagas,"Vagas indisponíveispara o curso #{course.nome_curto}")
      end
    end


  end


  def valida_vaga
    cursos = self.cursos
    cursos.each do |curso|
      course = Curso.find(curso)
      if course.vagas_disponiveis.to_i > 0
        b = course.vagas_disponiveis.to_i
        c = b - 1
        course.vagas_disponiveis = c
         t = course.save!
      end      
    end
  end
end