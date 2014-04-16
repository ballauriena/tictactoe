class GamesController < ApplicationController

	def create
		@game  = Game.new(challenger_id: current_player.id)
		if @game.save
			redirect_to game_path(@game)
		else
			redirect_to root_url
		end
	end

	def index
	end

	def show
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
	end

	private

	def game_params
		params.require(:game).permit(:challenger_id, :challengee_id, :win_status, :winner)
	end

end