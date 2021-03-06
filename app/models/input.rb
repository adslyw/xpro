class Input < ActiveRecord::Base
  belongs_to :asset
  has_many :tasks
  has_many :outputs, :through => :tasks
  attr_accessible :description
end
