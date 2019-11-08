class PlayersController < ApplicationController
 before_action :check_for_login

  def index
    @players = Player.order 'market_value DESC'
  end
  def my_players
    @players = @current_user.players
    render :index
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.new player_params
    # player = Player.create player_params
    # @current_user.players << player
    # redirect_to player

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      player.image = req["public_id"]
    end

    player.save
    @current_user.players << player
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
  :market_value)
end
end
