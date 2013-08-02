class Pastum < ActiveRecord::Base
  attr_accessible :name,:grupo_id
  belongs_to :grupo
  has_many :notum
end
