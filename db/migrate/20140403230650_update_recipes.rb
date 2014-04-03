class UpdateRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :tag_id, :integer
  end
end
