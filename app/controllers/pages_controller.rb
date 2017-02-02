class PagesController < ApplicationController
	def accueil
		@titre = t('accueil.titre')
		@last_post = Blog.includes(:user).all.order('created_at DESC').limit(2)
	end

	def agence
		@titre = t('agence.titre')
	end

	def services
		@titre = t('services.titre')
	end

	def strategie_digitale
		@titre = t('strategie_digitale.titre')
	end

	def web_developpement
		@titre = t('web_developpement.titre')
	end

	def community_manager
		@titre = t('community_manager.titre')
	end

	def referencement
		@titre = t('referencement.titre')
	end

	def portfolio
		@titre = t('realisations.titre')
	end

	def contact
		@titre = t('contact.titre')
	end

	def send_mail
		flash[:success] = t('contact.message_succes')
		redirect_to contact_path  if ContactMailer.contact(params[:contact][:email], params[:contact][:objet], params[:contact][:message]).deliver_now
	end

	def mentions_legales
		@titre = t('mlegales.titre')
	end
end
