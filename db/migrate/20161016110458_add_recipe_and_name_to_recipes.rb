class AddRecipeAndNameToRecipes < ActiveRecord::Migration
  def change
     add_column :recipes, :recipe_name, :string
     add_column :recipes, :recipe, :text
     add_column :histories, :manual_recipe, :text
     add_reference :histories, :user, index: true
     add_reference :histories, :recipe, index: true
  end
end
