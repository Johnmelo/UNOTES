class AddCollumPastaIdsToNotas < ActiveRecord::Migration
  def self.up
      add_column :nota, :pasta_ids, :integer
   end

   def self.down
      remove_column :nota, :pasta_ids
   end
end

