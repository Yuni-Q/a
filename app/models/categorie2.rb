class Categorie2 < ActiveRecord::Base
	belongs_to :categorie1
	has_many :products, dependent: :destroy
	has_many :categorie3s, dependent: :destroy
	validates :categorie1, :content, presence: true
end
