class PlayerGamesController < ApplicationController
  def index
    player_games = PlayerGame.all
    render json: player_games
  end

  def show
    player_game = PlayerGame.find(params[:id])
    render json: player_game
  end

  def create
    player_game = PlayerGame.new(player_game_params)
		# byebug

		# {animal: {
		# 	name: "",
		# 	gender: ""
		# }}

		if player_game.save
			render json: player_game
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
