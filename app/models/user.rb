class User < ApplicationRecord
	has_secure_password

	has_many :predictions
	has_many :questions, through: :predictions
	has_many :discussions

	validates :name, length:{in: 2..30,message:'must in 2-30 characters.'} 
	validates :password, presence:{message:'Password is necessary.'}
end
