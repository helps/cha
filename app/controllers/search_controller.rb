class SearchController < ApplicationController
  def s
    if !(params[:u]=="wu" && params[:p] == "qiang")
      render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
    end

  end
  def show
    @users = User.where(:userid => params[:userid])
  end
end
