class CreateGrupoUsers < ActiveRecord::Migration
  def change
    create_table :grupo_users do |t|

      t.timestamps
    end
  end
end
