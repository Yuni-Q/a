class Basket < ActiveRecord::Base
	belongs_to :user
	belongs_to :product
	validates :user, :product, presence: true
end