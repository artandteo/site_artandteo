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

	def destroy
		@abonne = Newsletter.where(email: params[:desabonnement][:email]).take
		if Newsletter.exists?(email: params[:desabonnement][:email])
			@abonne.destroy
			flash[:success] = "Vous avez été désinscrit de la newsletter"
			redirect_to root_path
		else 
			flash[:danger] = "Le compte n'existe pas !"
			redirect_to :back
		end
	end
end