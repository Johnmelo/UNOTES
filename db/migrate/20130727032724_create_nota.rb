class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.string :assunto
      t.string :conteudo

      t.timestamps
    end
  end
end
