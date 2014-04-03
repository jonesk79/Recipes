class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :tags_id, :presence => true

  has_and_belongs_to_many :tags


end
