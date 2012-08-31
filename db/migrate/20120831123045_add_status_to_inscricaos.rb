class AddStatusToInscricaos < ActiveRecord::Migration
  def self.up
    add_column :inscricaos, :status, :boolean, :default => 0
  end

  def self.down
    remove_column :inscricaos, :status
  end
end
