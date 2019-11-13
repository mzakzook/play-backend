class PlayersController < ApplicationController
  def index
    players = Player.all
    render json: PlayerSerializer.new(players)
  end

  def show
    player = Player.find(params[:id])
    render json: player
  end

  def create
    player = Player.new(player_params)
    render json: player
  end

  private

  def player_params
    params.require(:player).permit(:name, :company)
  end

end
