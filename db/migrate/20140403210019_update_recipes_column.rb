class UpdateRecipesColumn < ActiveRecord::Migration
  def change
    remove_column :recipes, :tags_id, :integer
    add_column :recipes, :tag_id, :integer
  end
end
