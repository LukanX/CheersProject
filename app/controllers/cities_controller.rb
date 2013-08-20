class CitiesController < ApplicationController
	def show
		@city = current_city
	end
end
