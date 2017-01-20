class PagesController < ApplicationController
	def accueil
		@titre = t('accueil.titre')
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

	def realisations
		@titre = t('realisations.titre')
	end

	def contact
		@titre = t('contact.titre')
	end
end
