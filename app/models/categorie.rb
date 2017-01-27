class Categorie < ApplicationRecord
	validates :categorie_nom, presence: true
	has_many :blogs

end