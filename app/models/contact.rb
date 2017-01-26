class Contact < ApplicationRecord
	attr_accessor :name, :email, :objet, :message
 
  validates :name, :email, :objet, :message, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: ' est invalide' }
end
