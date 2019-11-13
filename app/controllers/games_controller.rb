class GamesController < ApplicationController
  def index
    #(edit code)
    games = Game.all
    render json: GameSerializer.new(games)
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    #think about how games are created
    game = Game.new(game_params)

  end

  def update
    #game_params necessary?
    game = Game.find(params[:id])
		game.update(game_params)
		render json: game
  end

  def game_params
    params.require(:game).permit(:table_id, :num_players, :full)
  end

end
