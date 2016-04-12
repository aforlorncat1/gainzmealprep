class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def cart_count
  	$redis.scard "cart#{id}"
  end

  def cart_total_price
  	subtotal = 0
  	get_cart_meals.each do |meal|
  		subtotal = subtotal += meal.price 		
  	end
  end

  def get_cart_meals
  	cart_ids = $redis.smembers "cart{id}"
  	FoodItem.find(cart_ids)
  end

end
