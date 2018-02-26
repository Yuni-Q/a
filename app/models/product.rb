class Product < ActiveRecord::Base
	has_many :baskets, dependent: :destroy
  	has_many :followers, dependent: :destroy
  	#has_many :orders, dependent: :destroy
  	belongs_to :categorie1
  	belongs_to :categorie2
  	belongs_to :categorie3
  	validates :img, :name, :price, :weight, :categorie1, :categorie2, :categorie3, :content, presence: true
end
