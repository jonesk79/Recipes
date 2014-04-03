class Tag < ActiveRecord::Base
  validates :name, :presence => true
  has_many :recipes
  belongs_to :recipes
end
