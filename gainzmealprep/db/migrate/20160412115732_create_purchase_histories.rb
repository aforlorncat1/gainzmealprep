class CreatePurchaseHistories < ActiveRecord::Migration
  def change
    create_table :purchase_histories do |t|
      t.integer :food_item_id
      t.integer :user_id
      t.float :subtotal

      t.timestamps null: false
    end
  end
end
