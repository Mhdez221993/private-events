class AttendedEventsController < ApplicationController
  def index; end

  def show; end

  def create
    @event = Event.find(params[:event_id])
    if current_user.id == @event.creator_id
      redirect_to root_path, notice: "You can't attend your own event"
      return
    elsif AttendedEvent.where(attended_id: @event.id, visitor_id: current_user.id).exists?
      redirect_to root_path, notice: 'You already attending'
      return
    end

    attended_event = AttendedEvent.new(visitor_id: current_user.id, attended_id: @event.id)
    if attended_event.save
      redirect_to root_path, notice: 'You are attending now'
    else
      redirect_to root_path, notice: 'Something went wrong'
    end
  end
end
