class AddCollumGrupoIdsToPasta < ActiveRecord::Migration
 def self.up
      add_column :pasta, :grupo_ids, :integer
   end

   def self.down
      remove_column :pasta, :grupo_ids
   end
end
