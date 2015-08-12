class TeamsController < ApplicationController

  def show
  	@team = Team.find(params[:id])
    @scores = @team.scores
  end	

  def new
    @team = Team.new
  end

  def index
    @teams = Team.all
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

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update_attributes(params[:team])
      flash[:success] = "Team updated"
      redirect_to @team
    else
      render 'edit'
    end
  end

  def destroy
    Team.find(params[:id]).destroy
    flash[:success] = "Team removed."
    redirect_to teams_url
  end

end
