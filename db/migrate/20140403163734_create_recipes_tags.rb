class CreateRecipesTags < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
      t.column :recipes_id, :integer
      t.column :tags_id, :integer
      t.timestamps
    end
  end
end
