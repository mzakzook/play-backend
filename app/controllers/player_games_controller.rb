class PlayerGamesController < ApplicationController
  def index
    
    if params[:table_type]
      player_games = PlayerGame.by_type_and_sorted(params[:table_type])
      render json: player_games
    else
      player_games = PlayerGame.all
      render json: PlayerGameSerializer.new(player_games)
    end
    
  end

  def show
    player_game = PlayerGame.find(params[:id])
    render json: PlayerGameSerializer.new(player_game)
  end

  def create
    player_game = PlayerGame.new(player_game_params)
		if player_game.save
			render json: PlayerGameSerializer.new(player_game)
		else
			render json: { error: "Something went wrong, try again" }
    end
  end

  def update
		player_game = PlayerGame.find(params[:id])
		player_game.update(player_game_params)
		render json: player_game
	end

	
	def destroy
		player_game = PlayerGame.find(params[:id])
		player_game.destroy
		render json: { message: "Successfully deleted animal." }
	end

	def player_game_params
    params.require(:player_game).permit(:player_id, :game_id)
  end


end
