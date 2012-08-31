class AddStatusToInscricaos < ActiveRecord::Migration
  def self.up
    add_column :inscricaos, :status, :boolean
  end

  def self.down
    remove_column :inscricaos, :status, :default => 0
  end
end
