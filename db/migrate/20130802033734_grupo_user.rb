class GrupoUser < ActiveRecord::Migration
 def self.up
    create_table :grupouser do |t|
      t.references :user, :grupo 
      t.timestamps
    end
  end

  def self.down
    drop_table :grupouser
  end
end