class ContactMailer < ApplicationMailer
	def contact(expediteur, objet, message)
		@objet = objet
		@message = message
		mail(to: 'contact@artandteo.com', from: expediteur, subject: objet)
	end
end
