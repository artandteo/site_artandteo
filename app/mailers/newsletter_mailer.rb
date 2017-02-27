class NewsletterMailer < ApplicationMailer

	def send_email(abonne)
		@abonne = abonne
		mail(to: @abonne, subject: 'Newsletter')
  	end

end
