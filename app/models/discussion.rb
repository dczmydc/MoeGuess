class Discussion < ApplicationRecord
	belongs_to :user

	validates :title, length:{in: 1..127,message:'title must in 1-127 characters.'} 
	validates :content, length:{in: 1..16384,message:'contect must in 1-16384 characters.'} 

end
