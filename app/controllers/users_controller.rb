class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @event = @user.events
  end
end
