class AddCollumGrupoIdsToUsers < ActiveRecord::Migration
 def self.up
      add_column :users, :grupo_ids, :integer
   end

   def self.down
      remove_column :users, :grupo_ids
   end
end
