class TeamsController < ApplicationController
  def show
  	@team = Team.find(params[:id])
  end	

  def new
    @team = Team.new
  end

  def index
  end

  def create
    @team = Team.new(params[:team])
    if @team.save
      flash[:success] = "Welcome to the Tournament!"
      redirect_to @team
    else
      render 'new'
    end
  end
end
