class Admin < ApplicationRecord
	#has_many :questions
	has_secure_password

	validates :name, length:{in: 2..30,message:'must in 2-30 characters.'} 
	validates :password, presence:{message:'Password is necessary.'}
end
