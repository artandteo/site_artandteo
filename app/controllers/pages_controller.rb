class PagesController < ApplicationController
	def accueil
		@titre = t('titre')
	end

	def agence
		@titre = t('pages.agence.titre')
	end

	def services
		@titre = t('pages.services.titre')
	end

	def strategie_digitale
		@titre = t('pages.strategie_digitale.titre')
	end

	def web_developpement
		@titre = t('pages.web_developpement.titre')
	end

	def community_manager
		@titre = t('pages.community_manager.titre')
	end

	def referencement
		@titre = t('pages.referencement.titre')
	end

	def realisations
		@titre = t('pages.realisations.titre')
	end

	def contact
		@titre = t('pages.contact.titre')
	end
end
