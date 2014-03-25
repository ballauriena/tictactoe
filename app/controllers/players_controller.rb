class PlayersController < ApplicationController
	def new
		if current_player
			redirect_to player_path(current_player)
		end
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		if @player.save
			session[:current_player_id] = @player.id
			redirect_to player_path(@player)
		else 
			flash.now[:alert] = "Password and password confirmation must be the same."
			render 'players/new'
		end
	end

	private

	def player_params
		params.require(:player).permit(:username, :email, :password, :password_confirmation)
	end
end