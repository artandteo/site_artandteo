class SendNewsletterJob < ApplicationJob
  queue_as :default

  def perform(abonne)
    @abonne = abonne
    NewsletterMailer.send_email(@abonne).deliver_later
  end
end
