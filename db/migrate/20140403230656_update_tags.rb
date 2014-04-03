class UpdateTags < ActiveRecord::Migration
  def change
    remove_column :tags, :recipe_id, :integer
  end
end
