class SessionsController < ApplicationController
  def new
  end
  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to "/login"
    else
      session[:name] = params[:name]
    end
  end
  def destroy
    unless session[:name] == nil || session[:name].empty?
      session.delete :name
    end
  end
  
end
