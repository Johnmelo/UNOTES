class Notum < ActiveRecord::Base
  attr_accessible :assunto, :conteudo
  belongs_to :pasta
  has_many :comentarios
end
