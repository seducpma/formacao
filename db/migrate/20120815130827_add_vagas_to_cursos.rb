class AddVagasToCursos < ActiveRecord::Migration
  def self.up
    add_column :cursos, :vagas_disponiveis, :integer
  end

  def self.down
    remove_column :cursos, :vagas_disponiveis
  end
end
