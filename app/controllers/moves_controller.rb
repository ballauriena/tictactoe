class MovesController < ApplicationController
	def create
		@move = Move.new(player_id: current_player.id, game_id: params[:number], location: params[:move])
		if @move.save!
			render :nothing => true
		else
			redirect_to root_url
		end
	end

	private

	def move_params
		params.require(:move).permit(:player_id, :game_id, :location)
	end

end