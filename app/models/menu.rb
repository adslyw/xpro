class Menu < ActiveRecord::Base
  attr_accessible :icon, :title, :url
  validates :title, presence: true
  validates :icon, presence: true
  has_many :submenus, dependent: :destroy
end
