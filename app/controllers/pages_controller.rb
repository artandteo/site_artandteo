class PagesController < ApplicationController
	def accueil
		current_time = DateTime.now
		@to_date = Last_Newsletter.first.date
		# Date convertie en DD/MM/AAAA
		@formated_date = @to_date.strftime("%d/%m/%Y")
		@date_months = @to_date-6.months

		@last_post = Blog.last
		@post_created_at = @last_post.created_at.strftime("%d/%m/%Y")

		if current_time >= @formated_date && @post_created_at >= @date_months.strftime("%d/%m/%Y")
			@abonne = Newsletter.all
			@abonne.each do |a|
				NewsletterMailer.send_email(a.email).deliver_now
				Last_Newsletter.update(date: current_time+6.months)
			end
		end

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
		redirect_to root_path  if ContactMailer.contact(params[:contact][:email], params[:contact][:objet], params[:contact][:message]).deliver_now
	end

	def mentions_legales
		@titre = t('mlegales.titre')
	end

	def social_wall
		@titre = t('social.titre')
	end

	def newsletter

	end
end
