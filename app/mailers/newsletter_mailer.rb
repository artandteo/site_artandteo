class NewsletterMailer < ApplicationMailer

	def send_email(email)
		@last_post = Blog.includes(:user).all.order('created_at DESC').limit(2)
		mail(to: email, subject: 'Newsletter')
  	end

end
