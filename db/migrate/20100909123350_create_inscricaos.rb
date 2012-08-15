class CreateInscricaos < ActiveRecord::Migration
  def self.up
    create_table :inscricaos do |t|
      t.references :participante, :null => false
      t.date :data_inscricao

      t.timestamps
    end
  end

  def self.down
    drop_table :inscricaos
  end
end
