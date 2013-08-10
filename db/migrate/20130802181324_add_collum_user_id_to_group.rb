class AddCollumUserIdToGroup < ActiveRecord::Migration
  def up
  	add_column :groups, :owner_id, :integer
  end
  def down
  	add_column :groups, :owner_id
  end
end
