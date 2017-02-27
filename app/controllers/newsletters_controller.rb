class NewslettersController < ApplicationController

	def new
		@newsletter = Newsletter.new
	end

	def create 
		@newsletter = Newsletter.new(nom: params[:newsletter][:name], email: params[:newsletter][:email])
		if @newsletter.valid?
			if @newsletter.save
				flash[:success] = "Vous êtes inscrit à notre Newsletter !"
				redirect_to root_path
			end
		else 
			flash[:danger] = "Une erreur est survenue."
			redirect_to root_path
		end
	end
end