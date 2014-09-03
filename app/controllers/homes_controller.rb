class HomesController < ApplicationController
  before_filter :authenticate_user!

  def show
  	@shouts = current_user.shouts
  	@shout = Shout.new
  end
   
  def index
  end

  


end
