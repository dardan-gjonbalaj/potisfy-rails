module ApplicationHelper
  def logged_in?
    !!session[:user_id]
    !!current_user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])  if  !!session[:user_id]
  end

  def spotify_user
    @spotify_user ||= RSpotify::User.new(request.env['omniauth.auth']) if !!current_user
  end

end
