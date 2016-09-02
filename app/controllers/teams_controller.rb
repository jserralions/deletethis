class TeamsController < ApplicationController
  before_action :find_teams, only: [:show, :edit, :update, :destroy]
  before_action :team_params, only: [:update]
  def index
    @all_teams = Team.all
  end

  def show
  end

  def edit
  end

  def destroy
      @teams.destroy
      flash[:notice] = "Team was deleted. :("
      redirect_to teams_path
  end

  def update
      if @teams.update(team_params)
        flash[:notice] = "Article was updated!"
        redirect_to team_path(@teams)
      else
        render 'edit'
      end
  end

  def new
    @teams = Team.new
  end

  def create
    @teams = Team.new(team_params)
      if @teams.save
      flash[:notice] = "Congrats! Team was created."
      redirect_to teams_path
    else
      render 'new'
    end
  end

  private
  def team_params
    params.require(:team).permit(:name, :rank, :strength, :weakness)
  end

  def find_teams
    @teams = Team.find(params[:id])
  end

end
