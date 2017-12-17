class ScoresController < ApplicationController
	def index
		@predictions = Prediction.all
		@users = User.all
	end
end