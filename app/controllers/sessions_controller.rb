class SessionsController < ApplicationController
  def new
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Please come back soon <%= user.name %>!"
  end

  def create
    user = User.find_by(:name => params[:name])
    if user.present?
      if user.password == params[:password]
        session[:user_id] = user.id
        redirect_to root_url, notice: "Welcome Back #{user.name}!"
      else
        redirect_to root_url, notice: "Your password is incorrect #{user.name}."
      end
    else
      redirect_to root_url, notice: "Sorry #{user.name}. We don't recognize your username."
    end
  end
end
