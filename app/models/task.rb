class Task < ActiveRecord::Base
  belongs_to :input
  belongs_to :output
  attr_accessible :description, :state
end
