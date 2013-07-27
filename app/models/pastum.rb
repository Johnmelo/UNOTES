class Pastum < ActiveRecord::Base
  attr_accessible :name
  belongs_to :grupos
  has_many :nota
end
