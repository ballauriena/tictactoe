class SessionsController < ApplicationController
	def new
		if current_player
			redirect to player_path(current_player)
		end
	end

	def create
		player = Player.find_by_username(params[:username])
		if player && player.authenticate(params[:password])
			session[:current_player_id] = player.id
			redirect_to root_url
		else
			flash.now[:alert] = "Invalid email or password."
			render 'sessions/new'
		end
	end

	def destroy
		reset_session
		redirect_to root_url
	end
end