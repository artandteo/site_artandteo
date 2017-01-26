class ContactMailer < ApplicationMailer
	def contact
		mail(to: 'contact@artandteo.com', subject: 'Sujet de test')
	end
end
