class PlayersController < ApplicationController
  before_action :check_for_login
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def edit
    @player = Player.find params[:id]
  end

  def update
    player = Player.find params[:id]
    player.update player_params
    redirect_to player
  end

  def show
    @player = Player.find params[:id]
  end
end

private
def player_params
  params.require(:player).permit(:name, :nationality, :club, :position, :dob,
  :market_value, :image)
end
