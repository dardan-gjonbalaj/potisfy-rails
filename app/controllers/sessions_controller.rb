class SessionsController < ApplicationController
 
#  def omniauth
#   binding.pry
#  # @spotify_user ||= RSpotify::User.new(request.env['omniauth.auth']) if !!current_user
#   @user = User.find_by_id(username: auth[:uid])
#   if @user && @user.authenticate(password)
#     session[:user_id] = @user.id
#     redirect_to user_path(@user)
#    else
#     flash[:message] = @user.errors.full_messages
#      #redirect_to '/signup'
#     render :new
#     end
#  end
 
  def destroy
  puts params
  session.destroy
  spotify_user = nil
  redirect_to '/signup'
end


 private

 def auth
   request.env['omniauth.auth']
 end

end