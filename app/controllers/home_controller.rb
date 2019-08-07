class HomeController < ApplicationController
  def home_page
    @gossips = Gossip.all
  end

  def gossip_show
    @gossip = Gossip.find(params[:id])
  end

  def landing_page
    @first_name = params[:first_name]
  end

  def user_page
    @user = User.find(params[:id])
  end

  def contact_show
  end

  def show_team
  end


end
