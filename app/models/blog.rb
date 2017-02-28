class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :titre, :use => :slugged

	mount_uploader :image, ImageBlogUploader
	before_validation :default_slug

	validates :image, presence: true, on: :create
	#validates :slug, format: {with: /\A[a-z0-9]\-]*\z/}

	belongs_to :categorie
	belongs_to :user, required: false, foreign_key: "users_id"

	def next
    	Blog.where("id > ?", @blog).first
  	end

  	def prev
    	Blog.where("id < ?", params[:id]).last
  	end

    private 

  	def default_slug
  		if !self.titre.empty? && self.slug.empty?
  			self.slug = titre.parameterize
  		end
  	end
end
