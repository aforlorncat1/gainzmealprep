class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.integer :calories
      t.integer :carbs
      t.integer :protein
      t.integer :fat
      t.integer :price
      t.string :category
      t.string :secondary_ingredient
      t.string :secondary_ingredient_type

      t.timestamps null: false
    end
  end
end
