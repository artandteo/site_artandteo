class AdminsController < ApplicationController
	before_action :authenticate_user!
	before_action :is_admin

	def accueil 
		@titre = t('admin.titre')
		@total_utilisateur = User.count
		@total_posts = Blog.count
	end
	private 
	def is_admin
		redirect_to root_path if !current_user.is_admin?
	end
end
