class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable

  validates :firstname, presence: true, on: :create,  format: { with: /\A[\p{L}\p{M}]+\z/, message: ' est invalide' }
  #validates :firstname, format: { with: /\A[\p{L}\p{M}]+\z/, message: ' est invalide' }
  validates :lastname, presence: true, on: :create,  format: { with: /\A[\p{L}\p{M}]+\z/, message: ' est invalide' }
  validates :password, presence: true, on: :create, confirmation: true, length: { minimum: 6, message: ' doit être composé de 6 caractères minimums'  }
  validates :password_confirmation, presence: true, on: :create, length: { minimum: 6, message: ' doit être composé de 6 caractères minimums'  }


  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: ' est invalide' },
	uniqueness: {case_sensitive: false}
	
  has_many :blogs
end
