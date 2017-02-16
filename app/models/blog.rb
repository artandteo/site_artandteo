class Blog < ApplicationRecord
	mount_uploader :image, ImageBlogUploader

	validates :image, presence: true, on: :create

	belongs_to :categorie
	belongs_to :user, required: false, foreign_key: "users_id"

	def next
    	Blog.where("id > ?", @blog).first
  	end

  	def prev
    	Blog.where("id < ?", params[:id]).last
  	end

end
