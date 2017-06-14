class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to '/new'
    else
      redirect_to '/create'
    end
  end

  def destroy
    session.delete :name

    redirect_to '/new'
  end



end
