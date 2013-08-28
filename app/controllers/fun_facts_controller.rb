class FunFactsController < ApplicationController
  before_filter :admin_user,            only: [:destroy, :edit, :update, :create, :new]

  def new
    @fun_fact = current_city.fun_facts.new
  end

  def create
    @fun_fact = current_city.fun_facts.new(params[:fun_fact])
    if @fun_fact.save
      flash[:success] = "Fun fact added!"
      redirect_to current_city
    else
      render 'new'
    end
  end

  def edit
    @fun_fact = FunFact.find(params[:id])
  end

  def update
    @fun_fact = FunFact.find(params[:id])
    if @fun_fact.update_attributes(params[:fun_fact])
      flash[:success] = "Fun fact updated"
      redirect_to current_city
    else
      render 'edit'
    end
  end

end
