class AddColumnToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :tags_id, :integer
  end
end
