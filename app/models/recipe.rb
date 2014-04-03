class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  has_many :tags
  belongs_to :tags
end
