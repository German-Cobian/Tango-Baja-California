class EventsController < ApplicationController

  def index
    @events = Event.where(start_time: Time.now.beginning_of_year..Time.now.end_of_year)
  end

  def show
    @event = Event.find(params[:id])
  end
end