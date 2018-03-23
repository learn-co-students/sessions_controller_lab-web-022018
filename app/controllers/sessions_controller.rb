class SessionsController < ApplicationController
  def new
  end

  def create
  	if !params[:name] or params[:name].blank?
  		redirect_to :sessions_new
  	else
  		session[:name] = params[:name]
  		redirect_to :root
  	end
  end

  def destroy
  	session.delete :name
  	redirect_to '/'
  end

end
