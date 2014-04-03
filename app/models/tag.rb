class Tag < ActiveRecord::Base
  validates :name, :presence => true
  validates :recipes_id, :presence => true

  has_and_belongs_to_many :recipes
end
