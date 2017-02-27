class Newsletter < ApplicationRecord

	validates :nom, presence: true
	validates :email, presence: true, uniqueness: true

end