class Categorie1 < ActiveRecord::Base
	has_many :products, dependent: :destroy
	has_many :categorie2s, dependent: :destroy
	validates :content, presence: true
end
