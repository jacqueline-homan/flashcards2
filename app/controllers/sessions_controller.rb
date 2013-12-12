class SessionsController < ApplicationController
  def new
    #@user = User.new

  end

  def create
    raise env["omniauth.auth"].to_yaml
    user = User.find_by_email(params[:session][:email])
    sign_in(user)
  #  cookies.signed[:user_id] = user.id #Cookie use with user id encrypted via 'signed'
    redirect_to decks_path

  end

  def destroy
  	cookies.delete(:user_id)
  	redirect_to root_path
  end
end
