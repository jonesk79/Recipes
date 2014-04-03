class UpdateTagsColumn < ActiveRecord::Migration
  def change
    remove_column :tags, :recipes_id, :integer
    add_column :tags, :recipe_id, :integer
  end
end
