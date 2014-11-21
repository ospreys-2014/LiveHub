class SessionsController < ApplicationController

  def destroy
    if session[:user_id]
      session[:user_id] = nil
      redirect_to(root_path)
    end
  end

  def login
    @user = User.find()
    session[:user_id] = @user.id
  end
end
