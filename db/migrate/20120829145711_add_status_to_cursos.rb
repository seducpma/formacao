class AddStatusToCursos < ActiveRecord::Migration
  def self.up
    add_column :cursos, :status, :boolean, :default => 0
  end

  def self.down
    remove_column :cursos, :status
  end
end
