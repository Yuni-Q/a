class Categorie3 < ActiveRecord::Base
	belongs_to :categorie2
	has_many :products, dependent: :destroy
	validates :categorie2, :content, presence: true

end
