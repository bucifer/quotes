class UserSessionsController < ApplicationController

def new
end

 def create
    if login(params[:email], params[:password])
      flash[:success] = "Logged in as Admin!"
      redirect_back_or_to(quotes_path, message: 'Logged in successfully.')
    else
      flash[:alert] = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    flash[:alert] = "Logged out!"
    redirect_to(root_path, message: 'Logged out!')
  end
end
