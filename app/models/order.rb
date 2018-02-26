class Order < ActiveRecord::Base
	belongs_to :user
	#belongs_to :product
	serialize :product_ids
	serialize :basket_ids 
	serialize :numbers
	serialize :donations
	validates :user, :product_ids, :numbers, :product_price, :total_price, :address, :payment, :agreement ,presence: true
end
