class AddQtdeToCursos < ActiveRecord::Migration
  def self.up
    add_column :cursos, :qtde, :integer
  end

  def self.down
    remove_column :cursos, :qtde
  end
end
