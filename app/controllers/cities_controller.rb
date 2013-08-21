class CitiesController < ApplicationController
	
	def index
		@city = City.last
	end

	def show
		@city = City.find(params[:id])
	end

	def new
		@city = City.new
	end

	def create
		@city = City.new(params[:city])
		if @city.save
			flash[:success] = "You've added a city to the Cheers Project!"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@city = City.find(params[:id])
	end
end
