class UpdateRecipesTagsColumns < ActiveRecord::Migration
  def change
    remove_column :recipes_tags, :recipes_id, :integer
    add_column :recipes_tags, :recipe_id, :integer

    remove_column :recipes_tags, :tags_id, :integer
    add_column :recipes_tags, :tag_id, :integer
  end
end
