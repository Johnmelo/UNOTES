class Group < ActiveRecord::Base
  attr_accessible :name, :owner_id,:group_id,:user_ids
  has_and_belongs_to_many :users
end
