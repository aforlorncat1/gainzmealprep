json.array!(@food_items) do |food_item|
  json.extract! food_item, :id, :name, :description, :calories, :carbs, :protein, :fat, :price, :category, :secondary_ingredient, :secondary_ingredient_type
  json.url food_item_url(food_item, format: :json)
end
