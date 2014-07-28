class Submenu < ActiveRecord::Base
  belongs_to :menu
  validates :title, presence: true
  validates :icon, presence: true
  validates :url, presence: true
  attr_accessible :icon, :title, :url, :menu
end
