class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name

  has_many :cats
end
