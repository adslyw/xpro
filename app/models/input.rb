class Input < ActiveRecord::Base
  belongs_to :asset
  attr_accessible :description
end
