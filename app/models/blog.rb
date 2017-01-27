class Blog < ApplicationRecord
	mount_uploader :image, ImageBlogUploader

	validates :image, presence: true, on: :create

	belongs_to :categorie
	belongs_to :user, required: false, foreign_key: "users_id"

end
