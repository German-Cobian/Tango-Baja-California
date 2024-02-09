class EventsController < ApplicationController

  def index
    @events = Event.where(start_time: Time.now.beginning_of_month.beginning_of_week..
    Time.now.end_of_month.end_of_week)
  end

  def show
    @event = Event.find(params[:id])
  end
end