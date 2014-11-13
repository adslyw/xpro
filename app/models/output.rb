class Output < ActiveRecord::Base
  belongs_to :asset
  has_many :tasks
  has_many :inputs, :through => :tasks
  attr_accessible :description
end
