class PlayersController < ApplicationController

  def index
    @players = Player.order 'market_value DESC'
  end
 before_action :check_for_login
  def new
    @player = Player.new
  end

  def create
    player = Player.create player_params
    redirect_to player
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

def destroy
  player = Player.find params[:id]
  player.destroy
  redirect_to players_path
end

private
def player_params
  params.require(:player).permit(:name, :nationality, :club_id, :position, :dob,
  :market_value, :image)
end
end
