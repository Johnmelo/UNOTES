class Grupo < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user
  has_many :pastum
end
