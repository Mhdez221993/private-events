class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @event = @user.events
    @upcoming_events = current_user.attendeds.future_events
    @past_events = current_user.attendeds.past_events
  end
end
