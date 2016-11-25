class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :userId, index: true
      t.timestamps null: false
    end
  end
end
