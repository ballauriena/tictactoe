class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_player

  private

  def current_player
  	@_current_player ||= session[:current_player_id] && Player.find(session[:current_player_id])
  end
end
