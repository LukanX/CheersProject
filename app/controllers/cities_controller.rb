class CitiesController < ApplicationController
  before_filter :admin_user,     only: [:destroy, :edit, :update, :new, :create]

  layout 'city_layout'
	
	def index
		@city = City.pick_city
    @fun_facts = @city.fun_facts
    @new_fact = @city.fun_facts.new
	end

	def show
		@city = City.find(params[:id])
    @fun_facts = @city.fun_facts
    @new_fact = @city.fun_facts.new
	end

	def new
		@city = City.new
	end

	def create
		@city = City.new(params[:city])
		if @city.save
			flash[:success] = "You've added a city to the Cheers Project!"
			redirect_to @city
		else
			render 'new'
		end
	end

	def edit
		@city = City.find(params[:id])
	end

	def update
  	@city = City.find(params[:id])
    if @city.update_attributes(params[:city])
      flash[:success] = "City updated"
      redirect_to @city
    else
      render 'edit'
    end
  end
end
