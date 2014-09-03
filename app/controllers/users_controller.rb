class UsersController < ApplicationController
   

   def show
   	@user = User.find(params[:id])
   	@shouts = @user.shouts
   	
   end

   def destroy
   end
end