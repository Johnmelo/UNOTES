class CreatePasta < ActiveRecord::Migration
  def change
    create_table :pasta do |t|
      t.string :name
      t.timestamps
    end
  end
end
