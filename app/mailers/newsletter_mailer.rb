class NewsletterMailer < ApplicationMailer

	def send_email(email)
		mail(to: email, subject: 'Newsletter')
  	end

end
